# _Group

Test exclusion is achieved by organising tests into groups. Each group can be
exclusive, ie only one test is run at a time, or simultaneous, ie all tests
are run concurrently.


```pony
trait tag _Group
```

## Public Behaviours

### apply

Run the given test, or queue it and run later, as appropriate.


```pony
be apply(
  runner: _TestRunner tag)
```
#### Parameters

*   runner: [_TestRunner](ponytest-_TestRunner) tag

---

## Private Behaviours

### _test_complete

The specified test has completed.


```pony
be _test_complete(
  runner: _TestRunner tag)
```
#### Parameters

*   runner: [_TestRunner](ponytest-_TestRunner) tag

---

