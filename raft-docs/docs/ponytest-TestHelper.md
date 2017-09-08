# TestHelper

Per unit test class that provides control, logging and assertion functions.

Each unit test is given a TestHelper when it is run. This is val and so can
be passed between methods and actors within the test without restriction.

The assertion functions check the relevant condition and mark the test as a
failure if appropriate. The success or failure of the condition is reported
back as a Bool which can be checked if a different code path is needed when
that condition fails.

All assert functions take an optional message argument. This is simply a
string that is printed as part of the error message when the condition fails.
It is intended to aid identifying what failed.


```pony
class val TestHelper
```

## Constructors

### _create

Create a new TestHelper.


```pony
new val _create(
  runner: _TestRunner tag,
  env': Env val)
: TestHelper val^
```
#### Parameters

*   runner: [_TestRunner](ponytest-_TestRunner) tag
*   env': [Env](builtin-Env) val

#### Returns

* [TestHelper](ponytest-TestHelper) val^

---

## Public fields

* let env: [Env](builtin-Env) val

---

## Public Functions

### log

Log the given message.

The verbose parameter allows messages to be printed only when the --verbose
command line option is used. For example, by default assert failures are
logged, but passes are not. With --verbose both passes and fails are
reported.

Logs are printed one test at a time to avoid interleaving log lines from
concurrent tests.


```pony
fun box log(
  msg: String val,
  verbose: Bool val = false)
: None val
```
#### Parameters

*   msg: [String](builtin-String) val
*   verbose: [Bool](builtin-Bool) val = false

#### Returns

* [None](builtin-None) val

---

### fail

Flag the test as having failed.


```pony
fun box fail(
  msg: String val= "Test failed")
: None val
```
#### Parameters

*   msg: [String](builtin-String) val= "Test failed"

#### Returns

* [None](builtin-None) val

---

### assert_true

Assert that the given expression is true.


```pony
fun box assert_true(
  actual: Bool val,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   actual: [Bool](builtin-Bool) val
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_false

Assert that the given expression is false.


```pony
fun box assert_false(
  actual: Bool val,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   actual: [Bool](builtin-Bool) val
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_error

Assert that the given test function throws an error when run.


```pony
fun box assert_error(
  test: ITest box,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   test: [ITest](ponytest-ITest) box
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_no_error

Assert that the gived test function does not throw an error when run.


```pony
fun box assert_no_error(
  test: ITest box,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   test: [ITest](ponytest-ITest) box
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_is\[A: A\]

Assert that the 2 given expressions resolve to the same instance


```pony
fun box assert_is[A: A](
  expect: A,
  actual: A,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   expect: A
*   actual: A
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_eq\[A: ([Equatable](builtin-Equatable)\[A\] #read & [Stringable](builtin-Stringable) #read)\]

Assert that the 2 given expressions are equal.


```pony
fun box assert_eq[A: (Equatable[A] #read & Stringable #read)](
  expect: A,
  actual: A,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   expect: A
*   actual: A
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_isnt\[A: A\]

Assert that the 2 given expressions resolve to different instances.


```pony
fun box assert_isnt[A: A](
  not_expect: A,
  actual: A,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   not_expect: A
*   actual: A
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_ne\[A: ([Equatable](builtin-Equatable)\[A\] #read & [Stringable](builtin-Stringable) #read)\]

Assert that the 2 given expressions are not equal.


```pony
fun box assert_ne[A: (Equatable[A] #read & Stringable #read)](
  not_expect: A,
  actual: A,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   not_expect: A
*   actual: A
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_array_eq\[A: ([Equatable](builtin-Equatable)\[A\] #read & [Stringable](builtin-Stringable) #read)\]

Assert that the contents of the 2 given ReadSeqs are equal.


```pony
fun box assert_array_eq[A: (Equatable[A] #read & Stringable #read)](
  expect: ReadSeq[A] box,
  actual: ReadSeq[A] box,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   expect: [ReadSeq](builtin-ReadSeq)\[A\] box
*   actual: [ReadSeq](builtin-ReadSeq)\[A\] box
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### assert_array_eq_unordered\[A: ([Equatable](builtin-Equatable)\[A\] #read & [Stringable](builtin-Stringable) #read)\]

Assert that the contents of the 2 given ReadSeqs are equal ignoring order.


```pony
fun box assert_array_eq_unordered[A: (Equatable[A] #read & Stringable #read)](
  expect: ReadSeq[A] box,
  actual: ReadSeq[A] box,
  msg: String val= "",
  loc: SourceLoc val = __loc)
: Bool val
```
#### Parameters

*   expect: [ReadSeq](builtin-ReadSeq)\[A\] box
*   actual: [ReadSeq](builtin-ReadSeq)\[A\] box
*   msg: [String](builtin-String) val= ""
*   loc: [SourceLoc](builtin-SourceLoc) val = __loc

#### Returns

* [Bool](builtin-Bool) val

---

### long_test

Indicate that this is a long running test that may continue after the
test function exits.
Once this function is called, complete() must be called to finish the test,
unless a timeout occurs.
The timeout is specified in nanseconds.


```pony
fun box long_test(
  timeout: U64 val)
: None val
```
#### Parameters

*   timeout: [U64](builtin-U64) val

#### Returns

* [None](builtin-None) val

---

### complete

MUST be called by each long test to indicate the test has finished, unless
a timeout occurs.

The "success" parameter specifies whether the test succeeded. However if
any asserts fail the test will be considered a failure, regardless of the
value of this parameter.

Once this is called tear_down() may be called at any time.


```pony
fun box complete(
  success: Bool val)
: None val
```
#### Parameters

*   success: [Bool](builtin-Bool) val

#### Returns

* [None](builtin-None) val

---

### expect_action

Can be called in a long test to set up expectations for one or more actions
that, when all completed, will complete the test.

This pattern is useful for cases where you have multiple things that need
to happen to complete your test, but don't want to have to collect them
all yourself into a single actor that calls the complete method.

The order of calls to expect_action don't matter - the actions may be
completed in any other order to complete the test.


```pony
fun box expect_action(
  name: String val)
: None val
```
#### Parameters

*   name: [String](builtin-String) val

#### Returns

* [None](builtin-None) val

---

### complete_action

MUST be called for each action expectation that was set up in a long test
to fulfill the expectations. Any expectations that are still outstanding
when the long test timeout runs out will be printed by name when it fails.

Completing all outstanding actions is enough to finish the test. There's no
need to also call the complete method when the actions are finished.

Calling the complete method will finish the test immediately, without
waiting for any outstanding actions to be completed.


```pony
fun box complete_action(
  name: String val)
: None val
```
#### Parameters

*   name: [String](builtin-String) val

#### Returns

* [None](builtin-None) val

---

### fail_action

Call to fail an action, which will also cause the entire test to fail
immediately, without waiting the rest of the outstanding actions.

The name of the failed action will be included in the failure output.

Usually the action name should be an expected action set up by a call to
expect_action, but failing unexpected actions will also fail the test.


```pony
fun box fail_action(
  name: String val)
: None val
```
#### Parameters

*   name: [String](builtin-String) val

#### Returns

* [None](builtin-None) val

---

### dispose_when_done

Pass a disposable actor to be disposed of when the test is complete.
The actor will be disposed no matter whether the test succeeds or fails.

If the test is already tearing down, the actor will be disposed immediately.


```pony
fun box dispose_when_done(
  disposable: DisposableActor tag)
: None val
```
#### Parameters

*   disposable: [DisposableActor](builtin-DisposableActor) tag

#### Returns

* [None](builtin-None) val

---

## Private Functions

### _check_is\[A: A\]

Check that the 2 given expressions resolve to the same instance


```pony
fun box _check_is[A: A](
  check: String val,
  expect: A,
  actual: A,
  msg: String val,
  loc: SourceLoc val)
: Bool val
```
#### Parameters

*   check: [String](builtin-String) val
*   expect: A
*   actual: A
*   msg: [String](builtin-String) val
*   loc: [SourceLoc](builtin-SourceLoc) val

#### Returns

* [Bool](builtin-Bool) val

---

### _check_eq\[A: ([Equatable](builtin-Equatable)\[A\] #read & [Stringable](builtin-Stringable))\]

Check that the 2 given expressions are equal.


```pony
fun box _check_eq[A: (Equatable[A] #read & Stringable)](
  check: String val,
  expect: A,
  actual: A,
  msg: String val,
  loc: SourceLoc val)
: Bool val
```
#### Parameters

*   check: [String](builtin-String) val
*   expect: A
*   actual: A
*   msg: [String](builtin-String) val
*   loc: [SourceLoc](builtin-SourceLoc) val

#### Returns

* [Bool](builtin-Bool) val

---

### _check_isnt\[A: A\]

Check that the 2 given expressions resolve to different instances.


```pony
fun box _check_isnt[A: A](
  check: String val,
  not_expect: A,
  actual: A,
  msg: String val,
  loc: SourceLoc val)
: Bool val
```
#### Parameters

*   check: [String](builtin-String) val
*   not_expect: A
*   actual: A
*   msg: [String](builtin-String) val
*   loc: [SourceLoc](builtin-SourceLoc) val

#### Returns

* [Bool](builtin-Bool) val

---

### _check_ne\[A: ([Equatable](builtin-Equatable)\[A\] #read & [Stringable](builtin-Stringable))\]

Check that the 2 given expressions are not equal.


```pony
fun box _check_ne[A: (Equatable[A] #read & Stringable)](
  check: String val,
  not_expect: A,
  actual: A,
  msg: String val,
  loc: SourceLoc val)
: Bool val
```
#### Parameters

*   check: [String](builtin-String) val
*   not_expect: A
*   actual: A
*   msg: [String](builtin-String) val
*   loc: [SourceLoc](builtin-SourceLoc) val

#### Returns

* [Bool](builtin-Bool) val

---

### _format_loc

```pony
fun box _format_loc(
  loc: SourceLoc val)
: String val
```
#### Parameters

*   loc: [SourceLoc](builtin-SourceLoc) val

#### Returns

* [String](builtin-String) val

---

### _print_array\[A: [Stringable](builtin-Stringable) #read\]

Generate a printable string of the contents of the given readseq to use in
error messages.


```pony
fun box _print_array[A: Stringable #read](
  array: ReadSeq[A] box)
: String val
```
#### Parameters

*   array: [ReadSeq](builtin-ReadSeq)\[A\] box

#### Returns

* [String](builtin-String) val

---

