use "ponytest"


actor Main is TestList

  new create(env: Env) =>
    PonyTest(env, this)

  new make() =>
    // No sub tests yet.
    None 

  fun tag tests(test: PonyTest) =>
    test(_TestAppendEntriesAsFollower)
    test(_TestAppendEntriesAsLeader)

    

class _TestAppendEntriesAsFollower is UnitTest
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
        h.complete(true)
        }
      )

    h.long_test(3_000_000_000)


  fun name(): String =>
    "_TestAppendEntriesAsFollower"



class _TestAppendEntriesAsLeader is UnitTest
  """
  Test if the append_entries generates a notify in time.
  """

  fun ref apply(h: TestHelper)  =>

    // Create the server.
    let server = Server

    // Send AppendEntriesRequest
    server.append_entries(AppendEntriesRequest.heart_beat(
      0, // term
      0, // leader_id
      0,
      0,
      0),
      // Use a lambda to catch the result.
      {(resp: AppendEntriesResponse iso) => 
        // Receive the response and call it a success.
        h.complete(true)
      }
      )

    h.long_test(3_000_000_000)


  fun name(): String =>
    "_TestAppendEntriesAsLeader"

