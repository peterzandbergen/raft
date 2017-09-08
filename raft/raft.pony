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

class Server
  """
  Server class implements the raft server behaviour.
  """
  let _role: _Role = _CandidateRole


