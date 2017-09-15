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
  Test if the append_entries generates a notify in time.
  """

  fun ref apply(h: TestHelper)  =>

    // Create the server.
    let server = Server

    // Send AppendEntriesRequest
    server.append_entries(AppendEntriesRequest.heart_beat(
      1, // term
      1, // leader_id
      0,
      0,
      0),
      // Use a lambda to catch the result.
      {(resp: AppendEntriesResponse iso) => 
        // Receive the response and call it a success.
        if not resp.success then 
          h.log("success false")
          h.log("Msg: " + resp.error_msg)
          h.complete(false)
        else
          h.complete(resp.error_msg.size() == 0)
        end
      }
      )

    h.long_test(3_000_000_000)


  fun name(): String =>
    "_TestAppendEntriesAsFollower"



class _TestAppendEntriesWithEntry is UnitTest
  """
  Test if the append_entries generates a notify in time.
  """

  fun ref apply(h: TestHelper)  =>

    // Create the server.
    let server = Server

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
          h.complete(resp.error_msg.size() == 0)
        end
      }
      )

    h.long_test(3_000_000_000)


  fun name(): String =>
    "_TestAppendEntriesAsLeader"

