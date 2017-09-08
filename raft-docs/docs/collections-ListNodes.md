# ListNodes\[A: A, N: [ListNode](collections-ListNode)\[A\] #read\]

Iterate over the nodes in a list.


```pony
class ref ListNodes[A: A, N: ListNode[A] #read] is
  Iterator[N] ref
```

#### Implements

* [Iterator](builtin-Iterator)\[N\] ref

---

## Constructors

### create

Keep the next list node to be examined.


```pony
new ref create(
  head: (N | None val),
  reverse: Bool val = false)
: ListNodes[A, N] ref^
```
#### Parameters

*   head: (N | [None](builtin-None) val)
*   reverse: [Bool](builtin-Bool) val = false

#### Returns

* [ListNodes](collections-ListNodes)\[A, N\] ref^

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

Get the list node and replace it with the next one.


```pony
fun ref next()
: N ?
```

#### Returns

* N ?

---

