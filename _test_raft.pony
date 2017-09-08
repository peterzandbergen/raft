use "ponytest"


actor Main is TestList

  new create(env: Env) =>
    PonyTest(env, this)

  fun tag tests(test: PonyTest) =>
    test(_TestOne)
    

class _TestOne is UnitTest

  fun ref apply(h: TestHelper) ? =>
    None

  fun name(): String =>
    "_TestOne"

