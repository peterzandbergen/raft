# _ExclusiveGroup

Test group in which we only ever have one test running at a time.


```pony
actor tag _ExclusiveGroup is
  _Group tag
```

#### Implements

* [_Group](ponytest-_Group) tag

---

## Constructors

### create

```pony
new tag create()
: _ExclusiveGroup tag^
```

#### Returns

* [_ExclusiveGroup](ponytest-_ExclusiveGroup) tag^

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

