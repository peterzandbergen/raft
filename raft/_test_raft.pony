use "ponytest"


actor Main is TestList

  new create(env: Env) =>
    PonyTest(env, this)

  new make() =>
    // No sub tests yet.
    None 

  fun tag tests(test: PonyTest) =>
    test(_TestHeartbeat)
    test(_TestAppendEntriesWithEntry)

    

class _TestHeartbeat is UnitTest
  """
  Test if a heartbeat from a new leader to a new follower
  returns the correct result.
  """

  fun ref apply(h: TestHelper)  =>

    // Create the server.
    let server = Server.load(
      1, 
      1, 
      recover EntryLog end)
    
    // Send AppendEntriesRequest from a server that has no entries.
    server.append_entries(AppendEntriesRequest.heart_beat(
      1, // term
      1, // leader_id
      0, // prev_log_index
      0, // prev_log_term
      0), // leader_commit
      // Use a lambda to catch the result.
      {(resp: AppendEntriesResponse iso) => 
        // Receive the response and call it a success.
        if not resp.success then 
          h.log("success false")
          h.log("Msg: " + resp.error_msg)
          h.complete(false)
        else
          h.complete(true)
        end
      }
      )

    h.long_test(3_000_000_000)


  fun name(): String =>
    "_TestHeartbeat"



class _TestAppendEntriesWithEntry is UnitTest
  """
  Test if the append_entries generates a notify in time.
  """

  fun ref apply(h: TestHelper)  =>

    // Create an virgin server.
    let server = Server.load(
      1, 
      1, 
      recover EntryLog end)

    // Send AppendEntriesRequest
    server.append_entries(AppendEntriesRequest(
      1, // term
      1, // leader_id
      0,
      0,
      recover val [LogEntry(1, 1)] end,
      0),
      // Use a lambda to catch the result.
      {(resp: AppendEntriesResponse iso) => 
        // Receive the response and call it a success.
        if not resp.success then 
          h.log("success false")
          h.log("Msg: " + resp.error_msg)
          h.complete(false)
        else
          h.complete(true)
        end
      }
      )

    // Investigate the state of the server.
    

    h.long_test(3_000_000_000)


  fun name(): String =>
    "_TestAppendEntriesAsLeader"

