use "ponytest"

use raft = "raft"


actor Main is TestList

  new create(env: Env) =>
    PonyTest(env, this)

  new make() =>
    // No sub tests yet.
    None 

  fun tag tests(test: PonyTest) 
  """
  tests calls the tests in the sub package.
  """
  =>
    test(raft.Main.make().tests(test))

    

