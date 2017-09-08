# _SimultaneousGroup

Test group in which all tests can run concurrently.


```pony
actor tag _SimultaneousGroup is
  _Group tag
```

#### Implements

* [_Group](ponytest-_Group) tag

---

## Constructors

### create

```pony
new tag create()
: _SimultaneousGroup tag^
```

#### Returns

* [_SimultaneousGroup](ponytest-_SimultaneousGroup) tag^

---

## Public Behaviours

### apply

```pony
be apply(
  runner: _TestRunner tag)
```
#### Parameters

*   runner: [_TestRunner](ponytest-_TestRunner) tag

---

## Private Behaviours

### _test_complete

```pony
be _test_complete(
  runner: _TestRunner tag)
```
#### Parameters

*   runner: [_TestRunner](ponytest-_TestRunner) tag

---

