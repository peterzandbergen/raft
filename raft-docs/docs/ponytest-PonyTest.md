# PonyTest

Main test framework actor that organises tests, collates information and
prints results.


```pony
actor tag PonyTest
```

## Constructors

### create

```pony
new tag create(
  env: Env val,
  list: TestList tag)
: PonyTest tag^
```
#### Parameters

*   env: [Env](builtin-Env) val
*   list: [TestList](ponytest-TestList) tag

#### Returns

* [PonyTest](ponytest-PonyTest) tag^

---

## Public Behaviours

### apply

Run the given test, subject to our filters and options.


```pony
be apply(
  test: UnitTest iso)
```
#### Parameters

*   test: [UnitTest](ponytest-UnitTest) iso

---

## Private Behaviours

### _test_started

A test has started running, update status info.
The id parameter is the test identifier handed out when we created the test
helper.


```pony
be _test_started(
  id: USize val)
```
#### Parameters

*   id: [USize](builtin-USize) val

---

### _test_complete

A test has completed, restore its result and update our status info.
The id parameter is the test identifier handed out when we created the test
helper.


```pony
be _test_complete(
  id: USize val,
  pass: Bool val,
  log: Array[String val] val)
```
#### Parameters

*   id: [USize](builtin-USize) val
*   pass: [Bool](builtin-Bool) val
*   log: [Array](builtin-Array)\[[String](builtin-String) val\] val

---

### _all_tests_applied

All our tests have been handed to apply(), setup for finishing


```pony
be _all_tests_applied()
```

---

## Private Functions

### _find_group

Find the group to use for the given group name, subject to the
--sequential flag.


```pony
fun ref _find_group(
  group_name: String val)
: _Group tag
```
#### Parameters

*   group_name: [String](builtin-String) val

#### Returns

* [_Group](ponytest-_Group) tag

---

### _process_opts

Process our command line options.
All command line arguments given must be recognised and make sense.
State for specified options is stored in object fields.
We don't use the options package because we aren't already dependencies.


```pony
fun ref _process_opts()
: None val
```

#### Returns

* [None](builtin-None) val

---

### _print_report

The tests are all complete, print out the results.


```pony
fun box _print_report()
: None val
```

#### Returns

* [None](builtin-None) val

---

### _plural

Return a "s" or an empty string depending on whether the given number is 1.
For use when printing possibly plural words, eg "test" or "tests".


```pony
fun box _plural(
  n: USize val)
: String val
```
#### Parameters

*   n: [USize](builtin-USize) val

#### Returns

* [String](builtin-String) val

---

