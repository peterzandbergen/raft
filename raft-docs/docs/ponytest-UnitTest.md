# UnitTest

Each unit test class must provide this trait. Simple tests only need to
define the name() and apply() functions. The remaining functions specify
additional test options.


```pony
trait ref UnitTest
```

## Public Functions

### name

Report the test name, which is used when printing test results and on the
command line to select tests to run.


```pony
fun box name()
: String val
```

#### Returns

* [String](builtin-String) val

---

### exclusion_group

Report the test exclusion group, returning an empty string for none.
The default body returns an empty string.


```pony
fun box exclusion_group()
: String val
```

#### Returns

* [String](builtin-String) val

---

### apply

Run the test.
Raising an error is interpreted as a test failure.


```pony
fun ref apply(
  h: TestHelper val)
: None val ?
```
#### Parameters

*   h: [TestHelper](ponytest-TestHelper) val

#### Returns

* [None](builtin-None) val ?

---

### timed_out

Tear down a possibly hanging test.
Called when the timeout specified by to long_test() expires.
There is no need for this function to call complete(false).
tear_down() will still be called after this completes.
The default is to do nothing.


```pony
fun ref timed_out(
  h: TestHelper val)
: None val
```
#### Parameters

*   h: [TestHelper](ponytest-TestHelper) val

#### Returns

* [None](builtin-None) val

---

### tear_down

Tidy up after the test has completed.
Called for each run test, whether that test passed, succeeded or timed out.
The default is to do nothing.


```pony
fun ref tear_down(
  h: TestHelper val)
: None val
```
#### Parameters

*   h: [TestHelper](ponytest-TestHelper) val

#### Returns

* [None](builtin-None) val

---

### label

Report the test label, returning an empty string for none.
It can be later use to filter tests which we want to run, by labels.


```pony
fun box label()
: String val
```

#### Returns

* [String](builtin-String) val

---

