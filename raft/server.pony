class Server
  """
  Server class implements the raft server behaviour.
  """
  let _role: _Role

  new create() =>
    _role = _CandidateRole

