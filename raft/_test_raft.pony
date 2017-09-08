use "ponytest"


actor Main is TestList

  new create(env: Env) =>
    PonyTest(env, this)

  new make() =>
    // No sub tests yet.
    None 

  fun tag tests(test: PonyTest) =>
    test(_TestOne)

    

class _TestOne is UnitTest

  fun ref apply(h: TestHelper)  =>
    h.fail("Not implemented yet")

  fun name(): String =>
    "_TestOne"

