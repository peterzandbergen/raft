

interface Client
  fun vote(req: RequestVoteRequest val)


actor ClientState
  let id: String
  var next_index: U64
  var match_index: U64

  new create(id': String, next_index': U64 = 0, match_index': U64 = 0) =>
    id = id'
    next_index = next_index'
    match_index = match_index'

