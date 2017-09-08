# ListValues\[A: A, N: [ListNode](collections-ListNode)\[A\] #read\]

Iterate over the values in a list.


```pony
class ref ListValues[A: A, N: ListNode[A] #read] is
  Iterator[N->A] ref
```

#### Implements

* [Iterator](builtin-Iterator)\[N->A\] ref

---

## Constructors

### create

Keep the next list node to be examined.


```pony
new ref create(
  head: (N | None val),
  reverse: Bool val = false)
: ListValues[A, N] ref^
```
#### Parameters

*   head: (N | [None](builtin-None) val)
*   reverse: [Bool](builtin-Bool) val = false

#### Returns

* [ListValues](collections-ListValues)\[A, N\] ref^

---

## Public Functions

### has_next

If we have a list node, we have more values.


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### next

Get the value of the list node and replace it with the next one.


```pony
fun ref next()
: N->A ?
```

#### Returns

* N->A ?

---

