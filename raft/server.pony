use "collections"
use "time"

primitive LeaderRole
primitive FollowerRole
primitive CandidateRole
type Role is (FollowerRole | CandidateRole | LeaderRole)

actor Server
  """
  Server class implements the raft server behaviour.
  """
  var role: Role = FollowerRole
  // Persistent state for all server roles.
  var current_term: U64 = 0
  var voted_for: I32 = -1 // is undetermined.
  var log: EntryLog = log.create()
  // Volatile state
  var commit_index: U64 = 0
  var last_applied: U64 = 0
  // State only for leaders, one entry per follower.
  let client_state: MapIs[String, ClientState] = client_state.create()

  new create() =>
    """
    Default create does not load peristed state.
    """
    None

  new load(
    current_term': U64,
    voted_for': I32,
    log': EntryLog iso,
    client_ids: Seq[String] val) =>
    """
    - Loads a persisted state.
    - Initialize the clients from config.
    """
    current_term = current_term'
    voted_for = voted_for'
    let last_log_index = if log.size() > 0 then
      try log(log.size() - 1)?.index + 1 else 0 end
    else
      0
    end
    log = consume log'
    for id in client_ids.values() do
      client_state(id) = ClientState(id, last_log_index + 1, 0)
    end

  fun save() =>
    """
    Save the state of the server to ...
    """ 
    None

  be _ro_access(f: {(Server box)} val) =>
    """
    Give readonly access to the server. Used in testing.
    """
    f(this)


  be append_entries(
    req: AppendEntriesRequest val,
    notify: AppendEntriesNotify val
    ) =>
    """
    append_entries is used in two cases:

    - to add new entries
    - to serve as a heartbeat

    """
    // 1. Reply false if term < currentTerm (§5.1)
    if (req.term < current_term)
    then
      notify(AppendEntriesResponse(
        current_term,
        false,
        "Case 1 failed"))
      return
    end

    // Process heartbeat.
    if req.log.size() == 0 then
      notify(AppendEntriesResponse(
        current_term,
        true,
        "heatbeat ok"))
      return
    end

    // 2. Reply false if log doesn’t contain an entry at prevLogIndex
    // whose term matches prevLogTerm (§5.3)
    // TODO: handle special case for empty log on server and 
    // prev_log_index == 0
    try
      if (req.prev_log_index > 0) and (log.size() > 0) then
        if
          (req.prev_log_index >= log.size()) or 
          (log(req.prev_log_index)?.term != req.term)
        then
          notify(AppendEntriesResponse(
            current_term,
            false,
            "Case 2 failed"))
          return
        end
      end
    else
      notify(AppendEntriesResponse(
        current_term,
        false,
        "Exception at case 2"))
      return
    end

    var errmsg: String = ""
    try
      // Test the new logs against my logs.
      errmsg = "Testing entries."
      // Process the new entries.
      var last_index: U64 = 0
      for le in req.log.values() do 
        // Compare with my log.
        if le.index < log.size() then
          if log(le.index)?.term != le.term then
            // Remove this and following entries.
            log.truncate(le.index)
          end
        end
        // Append the entry and update commit index.
        log.push(le)
        last_index = le.index
        if req.leader_commit > commit_index then
          commit_index = last_index.min(req.leader_commit)
        end
      end
    else
      notify(AppendEntriesResponse(current_term, true, errmsg))
      return
    end
    // Signal result
    notify(AppendEntriesResponse(current_term, true))

  be handle_timer() =>
    """
    Handle a timer event. 

    - When the server is a follower switch to candidate mode.
    - When the server is a leader send out a 
      heartbeat to all followers.
    """

    match role
    | LeaderRole => _send_heartbeats()
    | FollowerRole => 
      role = CandidateRole

    | CandidateRole => 
      // Send out vote messages.
      None
    end

  be request_vote(
    req: RequestVoteRequest val,
    notify: RequestVoteNotify val) =>
    """
    This behaviour determines if the requestor can become the 
    leader.
    """
    None

  be client_request() =>
    """
    This behaviour processes the requests from the client. TBD.
    """ 
    None

  be install_snapshot() =>
    None

  fun _send_heartbeats() =>
    """
    Send a heartbeat to all known followers.
    """
    None

