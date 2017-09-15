interface AppendEntriesNotify
  fun apply(resp: AppendEntriesResponse iso) 

class val AppendEntriesRequest
  let term: U64 val
  let leader_id: U64 val
  let prev_log_index: U64 val
  let prev_log_term: U64 val
  let log: Array[LogEntry] val
  let leader_commit: U64 val

  new iso create(
    term': U64 val, 
    leader_id': U64 val, 
    prev_log_index': U64 val,
    prev_log_term': U64 val,
    log': Array[LogEntry] val = recover val Array[LogEntry] end,
    leader_commit': U64 val) =>
    """
    """
    term = term'
    leader_id = leader_id'
    prev_log_index = prev_log_index'
    prev_log_term = prev_log_term'
    log = log'
    leader_commit = leader_commit'

  new iso heart_beat(
    term': U64 val, 
    leader_id': U64 val, 
    prev_log_index': U64 val,
    prev_log_term': U64 val,
    leader_commit': U64 val) =>
    """
    """
    term = term'
    leader_id = leader_id'
    prev_log_index = prev_log_index'
    prev_log_term = prev_log_term'
    log = recover val Array[LogEntry] end
    leader_commit = leader_commit'


class AppendEntriesResponse
  """
  """  
  let term: U64 val
  let success: Bool val
  let error_msg: String

  new iso create(
    term': U64 val,
    success': Bool val,
    error_msg': String = "") =>

    term = term'
    success = success'
    error_msg = error_msg'

