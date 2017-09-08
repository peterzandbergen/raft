# ListNode\[A: A\]

A node in a list.


```pony
class ref ListNode[A: A]
```

## Constructors

### create

```pony
new ref create(
  item: (A | None val) = reference)
: ListNode[A] ref^
```
#### Parameters

*   item: (A | [None](builtin-None) val) = reference

#### Returns

* [ListNode](collections-ListNode)\[A\] ref^

---

## Public Functions

### apply

Return the item, if we have one, otherwise raise an error.


```pony
fun box apply()
: this->A ?
```

#### Returns

* this->A ?

---

### update

Replace the item and return the previous one. Raise an error if we have no
previous value.


```pony
fun ref update(
  value: (A | None val))
: A^ ?
```
#### Parameters

*   value: (A | [None](builtin-None) val)

#### Returns

* A^ ?

---

### pop

Remove the item from the node, if we have one, otherwise raise an error.


```pony
fun ref pop()
: A^ ?
```

#### Returns

* A^ ?

---

### prepend

Prepend a node to this one. If `that` is already in a list, it is removed
before it is prepended. Returns true if `that` was removed from another
list.


```pony
fun ref prepend(
  that: ListNode[A] ref)
: Bool val
```
#### Parameters

*   that: [ListNode](collections-ListNode)\[A\] ref

#### Returns

* [Bool](builtin-Bool) val

---

### append

Append a node to this one. If `that` is already in a list, it is removed
before it is appended. Returns true if `that` was removed from another
list.


```pony
fun ref append(
  that: ListNode[A] ref)
: Bool val
```
#### Parameters

*   that: [ListNode](collections-ListNode)\[A\] ref

#### Returns

* [Bool](builtin-Bool) val

---

### remove

Remove a node from a list.


```pony
fun ref remove()
: None val
```

#### Returns

* [None](builtin-None) val

---

### has_prev

Return true if there is a previous node.


```pony
fun box has_prev()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### has_next

Return true if there is a next node.


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### prev

Return the previous node.


```pony
fun box prev()
: (this->ListNode[A] ref | None val)
```

#### Returns

* (this->[ListNode](collections-ListNode)\[A\] ref | [None](builtin-None) val)

---

### next

Return the next node.


```pony
fun box next()
: (this->ListNode[A] ref | None val)
```

#### Returns

* (this->[ListNode](collections-ListNode)\[A\] ref | [None](builtin-None) val)

---

## Private Functions

### _set_list

Make this node the only node on the given list.


```pony
fun ref _set_list(
  list: List[A] ref)
: ListNode[A] ref^
```
#### Parameters

*   list: [List](collections-List)\[A\] ref

#### Returns

* [ListNode](collections-ListNode)\[A\] ref^

---

