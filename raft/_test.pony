use "ponytest"
use "time"

actor Main is TestList
  new create(env: Env) => PonyTest(env, this)
  new make() => None 

  fun tag tests(test: PonyTest) =>
    test(_TestHeartbeat)
    test(_TestAppendEntriesWithOneEntry)
    test(_TestAppendEntriesWithTwoEntries)
    test(_TestHeartbeatTimeout)

class _TestHeartbeat is UnitTest
  """
  Test if a heartbeat from a new leader to a new follower
  returns the correct result.
  """

  fun ref apply(h: TestHelper)  =>
    // Create the server.
    let server = Server.load(
      0, 
      0, 
      recover EntryLog end,
      recover val ["client1"] end) 
    // Send AppendEntriesRequest from a server that has no entries.
    server.append_entries( 
      AppendEntriesRequest.heart_beat(
        1, // term
        1, // leader_id
        0, // prev_log_index
        0, // prev_log_term
        0
      ), // leader_commit
      // Use a lambda to catch the result.
      {(resp) => 
        // Receive the response and call it a success.
        if not resp.success then 
          h.log("success false")
          h.log("Msg: " + resp.error_msg)
          h.complete(false)
        else
          h.assert_eq[U64](0, resp.term)
          h.complete(true)
        end 
      }
    )

    h.long_test(3_000_000_000)

  fun name(): String =>"raft/_TestHeartbeat"

class _TestHeartbeatTimeout is UnitTest
  """
  Test if a heartbeat from a new leader to a new follower
  returns the correct result.
  """
  let _name: String = "raft/_TestHeartbeatTimeout"

  fun ref apply(h: TestHelper)  =>
    // Create the server.
    let server = Server.load(
      0, 
      0, 
      recover EntryLog end,
      recover val ["client1"] end
    ) 

    // TODO: Send a timeout message to the server.
    server.handle_timer()
    // TODO: Test the internal state of the server.
    server._ro_access(
      {(s) => 
        h.assert_is[Role](CandidateRole, s.role)
        h.complete(true)
      }
    )

    h.long_test(3_000_000_000)

  fun name(): String =>_name

class _TestAppendEntriesWithOneEntry is UnitTest
  """
  Test if the append_entries appends the entries
  and updates the internal state.
  """
  fun name(): String => "_TestAppendEntriesWithOneEntry"

  fun ref apply(h: TestHelper)  =>
    // Create an virgin server.
    let server = Server.load(
      0, 
      0, 
      recover EntryLog end,
      recover val ["client1"] end
    )

    // Send AppendEntriesRequest for the first entry of the log.
    server.append_entries(
      AppendEntriesRequest(
        1, // term
        1, // leader_id
        0, // prev_log_index
        0, // prev_log_term
        recover val [LogEntry(1, 1)] end, // The new entry.
        1
      ), // leader_commit
      // Use a lambda to catch the result.
      {(resp) => 
        // Abort when success is false.
        if not resp.success then 
          h.log("success false")
          h.log("Msg: " + resp.error_msg)
          h.complete(false)
          return
        end
      }
    )

    // TODO: Investigate the state of the server.
    server._ro_access(
      {(s) =>
        h.assert_eq[U64](1, s.commit_index, "commit_index error")
        h.assert_eq[U64](1, s.log.size())
        h.complete(true)
      }
    )

    h.long_test(3_000_000_000)

class _TestAppendEntriesWithTwoEntries is UnitTest
  """
  Test if the append_entries appends the entries
  and updates the internal state.
  """
  fun name(): String => "_TestAppendEntriesWithTwoEntries"

  fun ref apply(h: TestHelper)  =>
    // Create an virgin server.
    let server = Server.load(
      0, 
      0, 
      recover EntryLog end,
      recover val ["client1"] end
    )

    // Send AppendEntriesRequest for the first entry of the log.
    server.append_entries(
      AppendEntriesRequest(
        1, // term
        1, // leader_id
        0, // prev_log_index
        0, // prev_log_term
        recover val [LogEntry(1, 1); LogEntry(1, 2)] end, // The new entry.
        2
      ), // leader_commit
      // Use a lambda to catch the result.
      {(resp) => 
        // Abort when success is false.
        if not resp.success then 
          h.log("success false")
          h.log("Msg: " + resp.error_msg)
          h.complete(false)
          return
        end
      }
    )

    // TODO: Investigate the state of the server.
    server._ro_access(
      {(s: Server box) =>
        h.assert_is[U64](2, s.commit_index, "commit_index error")
        h.assert_is[U64](2, s.log.size())
        h.complete(true)
      }
    )
    h.long_test(3_000_000_000)


