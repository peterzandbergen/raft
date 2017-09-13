use "collections"


primitive LeaderRole
primitive FollowerRole
primitive CandidateRole

class LogEntry


type Role is (FollowerRole | CandidateRole | LeaderRole)

actor Server
  """
  Server class implements the raft server behaviour.
  """
  let _role: Role 

  new create() =>
    _role = FollowerRole


  be append_entries(
    term: U64 val, 
    leader_id: U64 val, 
    prev_log_index: U64 val,
    prev_log_term: U64 val,
    log_entries: (None | Array[LogEntry] val),
    leader_commit: U64 val) =>
    """
    append_entries is used in two cases:

    - to add new entries
    - to serve as a heartbeat
    """
    None


  be request_vote() =>
    """
    """
    None

  be client_request() =>
    None

  be install_snapshot() =>
    None