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
  var _role: Role = FollowerRole
  // Persistent state for all server roles.
  var current_term: U64 = 0
  var voted_for: I32 = -1 // is undetermined.
  var log: EntryLog = log.create()
  // Volatile state
  var commit_index: U64 = 0
  var last_applied: U64 = 0
  // State only for leaders
  var next_index: Map[U64, U64] = next_index.create()
  var match_index: Map[U64, U64] = match_index.create()


  new create() =>
    """
    Default create does not load peristed state.
    """
    None

  new load() =>
    """
    Loads a persisted state.
    """
    None

  fun save() =>
    None


  be append_entries(
    req: AppendEntriesRequest val,
    notify: AppendEntriesNotify iso
    ) =>
    """
    append_entries is used in two cases:

    - to add new entries
    - to serve as a heartbeat

    """
    try
      if 
        // Test the term.
        (req.term < current_term) or
        // Reply false if the term at prev index and the req.term are 
        // not equal.
        (req.prev_log_index > log.size()) or 
        (log(req.prev_log_index)?.term != req.term)
      then
        notify(AppendEntriesResponse(
          current_term,
          false))
        return
      end

      // Test the new logs against my logs.
      if req.log.size() == 0 then
        notify(AppendEntriesResponse(
          current_term,
          true))
          return
      end

      // Process the new entries.
      var last_index: U64 = 0
      for le in req.log.values() do 
        // Compare with my log.
        if le.index < log.size() then
          if log(le.index)?.term != le.term then
            // Remove this and following entries.
            log.truncate(le.index)
          else
            // Append the entry.
            log.push(le)
            last_index = le.index
          end
        end
        if req.leader_commit > commit_index then
          commit_index = last_index.min(req.leader_commit)
        end
      end

      // Signal result
      notify(AppendEntriesResponse(current_term, true))
    else
      notify(AppendEntriesResponse(current_term, false))
    end


  be request_vote(
    term: U64,
    candidate_id: U64,
    last_log_index: U64,
    last_log_term: U64) =>
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


  be election_timeout() =>
    """
    The election_timeout is called in the follower role 
    when this server failed to receive a 
    heartbeat from the server.

    This puts the server in the CandidateRole.
    """
    None

