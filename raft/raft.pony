"""
Raft implements the raft protocol as described on https://raft.github.io/

package will have the following classes/actors

- _LeaderRole
- _FollowerRole
- _CandidateRole
- _AppendEntriesRequest
- _AppendEntriesResponse
- _RequestVoteRequest
- _RequestVoteResponse

"""

type _Role is (_LeaderRole | _FollowerRole | _CandidateRole)

type _Request is (_RequestVoteRequest | _AppendEntriesRequest)  
type _Response is (_RequestVoteResponse | _AppendEntriesResponse)
type _Message is (_Request | _Response)


trait _MessageHandler
  fun handle_message(server: Server, msg: _Message iso) 