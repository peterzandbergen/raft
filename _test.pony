use "ponytest"

use raft = "raft"


actor Main is TestList

  new create(env: Env) => PonyTest(env, this)
  new make() => None 

  fun tag tests(test: PonyTest) =>
    """
    tests calls the tests in the sub package.
    """
    raft.Main.make().tests(test)

    

