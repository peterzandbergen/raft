"""
Raft implements the raft protocols as described on https://raft.github.io/

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

class Server
  let _role: _Role = _CandidateRole




class _LeaderRole



class _FollowerRole



class _CandidateRole

