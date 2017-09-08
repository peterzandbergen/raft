# List\[A: A\]

A doubly linked list.


```pony
class ref List[A: A] is
  Seq[A] ref
```

#### Implements

* [Seq](builtin-Seq)\[A\] ref

---

## Constructors

### create

```pony
new ref create(
  len: USize val = 0)
: List[A] ref^
```
#### Parameters

*   len: [USize](builtin-USize) val = 0

#### Returns

* [List](collections-List)\[A\] ref^

---

### unit

```pony
new ref unit(
  a: A)
: List[A] ref^
```
#### Parameters

*   a: A

#### Returns

* [List](collections-List)\[A\] ref^

---

### from

```pony
new ref from(
  seq: Array[A^] ref)
: List[A] ref^
```
#### Parameters

*   seq: [Array](builtin-Array)\[A^\] ref

#### Returns

* [List](collections-List)\[A\] ref^

---

## Public Functions

### reserve

Do nothing, but be compatible with Seq.


```pony
fun ref reserve(
  len: USize val)
: None val
```
#### Parameters

*   len: [USize](builtin-USize) val

#### Returns

* [None](builtin-None) val

---

### size

Returns the number of items in the list.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### apply

Get the i-th element, raising an error if the index is out of bounds.


```pony
fun box apply(
  i: USize val = 0)
: this->A ?
```
#### Parameters

*   i: [USize](builtin-USize) val = 0

#### Returns

* this->A ?

---

### update

Change the i-th element, raising an error if the index is out of bounds.
Returns the previous value, which may be None if the node has been popped
but left on the list.


```pony
fun ref update(
  i: USize val,
  value: A)
: A^ ?
```
#### Parameters

*   i: [USize](builtin-USize) val
*   value: A

#### Returns

* A^ ?

---

### index

Gets the i-th node, raising an error if the index is out of bounds.


```pony
fun box index(
  i: USize val)
: this->ListNode[A] ref ?
```
#### Parameters

*   i: [USize](builtin-USize) val

#### Returns

* this->[ListNode](collections-ListNode)\[A\] ref ?

---

### remove

Remove the i-th node, raising an error if the index is out of bounds.
The removed node is returned.


```pony
fun ref remove(
  i: USize val)
: ListNode[A] ref ?
```
#### Parameters

*   i: [USize](builtin-USize) val

#### Returns

* [ListNode](collections-ListNode)\[A\] ref ?

---

### clear

Empties the list.


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None) val

---

### head

Get the head of the list.


```pony
fun box head()
: this->ListNode[A] ref ?
```

#### Returns

* this->[ListNode](collections-ListNode)\[A\] ref ?

---

### tail

Get the tail of the list.


```pony
fun box tail()
: this->ListNode[A] ref ?
```

#### Returns

* this->[ListNode](collections-ListNode)\[A\] ref ?

---

### prepend_node

Adds a node to the head of the list.


```pony
fun ref prepend_node(
  node: ListNode[A] ref)
: None val
```
#### Parameters

*   node: [ListNode](collections-ListNode)\[A\] ref

#### Returns

* [None](builtin-None) val

---

### append_node

Adds a node to the tail of the list.


```pony
fun ref append_node(
  node: ListNode[A] ref)
: None val
```
#### Parameters

*   node: [ListNode](collections-ListNode)\[A\] ref

#### Returns

* [None](builtin-None) val

---

### append_list

Remove all nodes from that and append them to this.


```pony
fun ref append_list(
  that: List[A] ref)
: None val
```
#### Parameters

*   that: [List](collections-List)\[A\] ref

#### Returns

* [None](builtin-None) val

---

### prepend_list

Remove all nodes from that and prepend them to this.


```pony
fun ref prepend_list(
  that: List[A] ref)
: None val
```
#### Parameters

*   that: [List](collections-List)\[A\] ref

#### Returns

* [None](builtin-None) val

---

### push

Adds a value to the tail of the list.


```pony
fun ref push(
  a: A)
: None val
```
#### Parameters

*   a: A

#### Returns

* [None](builtin-None) val

---

### pop

Removes a value from the tail of the list.


```pony
fun ref pop()
: A^ ?
```

#### Returns

* A^ ?

---

### unshift

Adds a value to the head of the list.


```pony
fun ref unshift(
  a: A)
: None val
```
#### Parameters

*   a: A

#### Returns

* [None](builtin-None) val

---

### shift

Removes a value from the head of the list.


```pony
fun ref shift()
: A^ ?
```

#### Returns

* A^ ?

---

### append

Append len elements from a sequence, starting from the given offset.


```pony
fun ref append(
  seq: (ReadSeq[A] box & ReadElement[A^] box),
  offset: USize val = 0,
  len: USize val = call)
: None val
```
#### Parameters

*   seq: ([ReadSeq](builtin-ReadSeq)\[A\] box & [ReadElement](builtin-ReadElement)\[A^\] box)
*   offset: [USize](builtin-USize) val = 0
*   len: [USize](builtin-USize) val = call

#### Returns

* [None](builtin-None) val

---

### concat

Add len iterated elements to the end of the list, starting from the given
offset.


```pony
fun ref concat(
  iter: Iterator[A^] ref,
  offset: USize val = 0,
  len: USize val = call)
: None val
```
#### Parameters

*   iter: [Iterator](builtin-Iterator)\[A^\] ref
*   offset: [USize](builtin-USize) val = 0
*   len: [USize](builtin-USize) val = call

#### Returns

* [None](builtin-None) val

---

### truncate

Truncate the list to the given length, discarding excess elements.
If the list is already smaller than len, do nothing.


```pony
fun ref truncate(
  len: USize val)
: None val
```
#### Parameters

*   len: [USize](builtin-USize) val

#### Returns

* [None](builtin-None) val

---

### clone

Clone the list.


```pony
fun box clone()
: List[this->A!] ref^
```

#### Returns

* [List](collections-List)\[this->A!\] ref^

---

### map\[B: B\]

Builds a new list by applying a function to every member of the list.


```pony
fun box map[B: B](
  f: {(this->A!): B^}[A, B] box)
: List[B] ref^
```
#### Parameters

*   f: {(this->A!): B^}[A, B] box

#### Returns

* [List](collections-List)\[B\] ref^

---

### flat_map\[B: B\]

Builds a new list by applying a function to every member of the list and
using the elements of the resulting lists.


```pony
fun box flat_map[B: B](
  f: {(this->A!): List[B]}[A, B] box)
: List[B] ref^
```
#### Parameters

*   f: {(this->A!): List[B]}[A, B] box

#### Returns

* [List](collections-List)\[B\] ref^

---

### filter

Builds a new list with those elements that satisfy a provided predicate.


```pony
fun box filter(
  f: {(this->A!): Bool}[A] box)
: List[this->A!] ref^
```
#### Parameters

*   f: {(this->A!): Bool}[A] box

#### Returns

* [List](collections-List)\[this->A!\] ref^

---

### fold\[B: B\]

Folds the elements of the list using the supplied function.


```pony
fun box fold[B: B](
  f: {(B!, this->A!): B^}[A, B] box,
  acc: B)
: B
```
#### Parameters

*   f: {(B!, this->A!): B^}[A, B] box
*   acc: B

#### Returns

* B

---

### every

Returns true if every element satisfies the provided predicate, false
otherwise.


```pony
fun box every(
  f: {(this->A!): Bool}[A] box)
: Bool val
```
#### Parameters

*   f: {(this->A!): Bool}[A] box

#### Returns

* [Bool](builtin-Bool) val

---

### exists

Returns true if at least one element satisfies the provided predicate,
false otherwise.


```pony
fun box exists(
  f: {(this->A!): Bool}[A] box)
: Bool val
```
#### Parameters

*   f: {(this->A!): Bool}[A] box

#### Returns

* [Bool](builtin-Bool) val

---

### partition

Builds a pair of lists, the first of which is made up of the elements
satisfying the supplied predicate and the second of which is made up of
those that do not.


```pony
fun box partition(
  f: {(this->A!): Bool}[A] box)
: (List[this->A!] ref^ , List[this->A!] ref^)
```
#### Parameters

*   f: {(this->A!): Bool}[A] box

#### Returns

* ([List](collections-List)\[this->A!\] ref^ , [List](collections-List)\[this->A!\] ref^)

---

### drop

Builds a list by dropping the first n elements.


```pony
fun box drop(
  n: USize val)
: List[this->A!] ref^
```
#### Parameters

*   n: [USize](builtin-USize) val

#### Returns

* [List](collections-List)\[this->A!\] ref^

---

### take

Builds a list of the first n elements.


```pony
fun box take(
  n: USize val)
: List[this->A!] ref
```
#### Parameters

*   n: [USize](builtin-USize) val

#### Returns

* [List](collections-List)\[this->A!\] ref

---

### take_while

Builds a list of elements satisfying the provided predicate until one does
not.


```pony
fun box take_while(
  f: {(this->A!): Bool}[A] box)
: List[this->A!] ref^
```
#### Parameters

*   f: {(this->A!): Bool}[A] box

#### Returns

* [List](collections-List)\[this->A!\] ref^

---

### reverse

Builds a new list by reversing the elements in the list.


```pony
fun box reverse()
: List[this->A!] ref^
```

#### Returns

* [List](collections-List)\[this->A!\] ref^

---

### contains\[optional B: (A & [HasEq](builtin-HasEq)\[A!\] #read)\]

Returns true if the list contains the provided element, false otherwise.


```pony
fun box contains[optional B: (A & HasEq[A!] #read)](
  a: box->B)
: Bool val
```
#### Parameters

*   a: box->B

#### Returns

* [Bool](builtin-Bool) val

---

### nodes

Return an iterator on the nodes in the list.


```pony
fun box nodes()
: ListNodes[A, this->ListNode[A] ref] ref^
```

#### Returns

* [ListNodes](collections-ListNodes)\[A, this->[ListNode](collections-ListNode)\[A\] ref\] ref^

---

### rnodes

Return an iterator on the nodes in the list.


```pony
fun box rnodes()
: ListNodes[A, this->ListNode[A] ref] ref^
```

#### Returns

* [ListNodes](collections-ListNodes)\[A, this->[ListNode](collections-ListNode)\[A\] ref\] ref^

---

### values

Return an iterator on the values in the list.


```pony
fun box values()
: ListValues[A, this->ListNode[A] ref] ref^
```

#### Returns

* [ListValues](collections-ListValues)\[A, this->[ListNode](collections-ListNode)\[A\] ref\] ref^

---

### rvalues

Return an iterator on the values in the list.


```pony
fun box rvalues()
: ListValues[A, this->ListNode[A] ref] ref^
```

#### Returns

* [ListValues](collections-ListValues)\[A, this->[ListNode](collections-ListNode)\[A\] ref\] ref^

---

## Private Functions

### _map\[B: B\]

Private helper for map, recursively working with ListNodes.


```pony
fun box _map[B: B](
  ln: this->ListNode[A] ref,
  f: {(this->A!): B^}[A, B] box,
  acc: List[B] ref)
: List[B] ref^
```
#### Parameters

*   ln: this->[ListNode](collections-ListNode)\[A\] ref
*   f: {(this->A!): B^}[A, B] box
*   acc: [List](collections-List)\[B\] ref

#### Returns

* [List](collections-List)\[B\] ref^

---

### _flat_map\[B: B\]

Private helper for flat_map, recursively working with ListNodes.


```pony
fun box _flat_map[B: B](
  ln: this->ListNode[A] ref,
  f: {(this->A!): List[B]}[A, B] box,
  acc: List[B] ref)
: List[B] ref^
```
#### Parameters

*   ln: this->[ListNode](collections-ListNode)\[A\] ref
*   f: {(this->A!): List[B]}[A, B] box
*   acc: [List](collections-List)\[B\] ref

#### Returns

* [List](collections-List)\[B\] ref^

---

### _filter

Private helper for filter, recursively working with ListNodes.


```pony
fun box _filter(
  ln: this->ListNode[A] ref,
  f: {(this->A!): Bool}[A] box,
  acc: List[this->A!] ref)
: List[this->A!] ref
```
#### Parameters

*   ln: this->[ListNode](collections-ListNode)\[A\] ref
*   f: {(this->A!): Bool}[A] box
*   acc: [List](collections-List)\[this->A!\] ref

#### Returns

* [List](collections-List)\[this->A!\] ref

---

### _fold\[B: B\]

Private helper for fold, recursively working with ListNodes.


```pony
fun box _fold[B: B](
  ln: this->ListNode[A] ref,
  f: {(B!, this->A!): B^}[A, B] box,
  acc: B)
: B
```
#### Parameters

*   ln: this->[ListNode](collections-ListNode)\[A\] ref
*   f: {(B!, this->A!): B^}[A, B] box
*   acc: B

#### Returns

* B

---

### _every

Private helper for every, recursively working with ListNodes.


```pony
fun box _every(
  ln: this->ListNode[A] ref,
  f: {(this->A!): Bool}[A] box)
: Bool val
```
#### Parameters

*   ln: this->[ListNode](collections-ListNode)\[A\] ref
*   f: {(this->A!): Bool}[A] box

#### Returns

* [Bool](builtin-Bool) val

---

### _exists

Private helper for exists, recursively working with ListNodes.


```pony
fun box _exists(
  ln: this->ListNode[A] ref,
  f: {(this->A!): Bool}[A] box)
: Bool val
```
#### Parameters

*   ln: this->[ListNode](collections-ListNode)\[A\] ref
*   f: {(this->A!): Bool}[A] box

#### Returns

* [Bool](builtin-Bool) val

---

### _reverse

Private helper for reverse, recursively working with ListNodes.


```pony
fun box _reverse(
  ln: this->ListNode[A] ref,
  acc: List[this->A!] ref)
: List[this->A!] ref^
```
#### Parameters

*   ln: this->[ListNode](collections-ListNode)\[A\] ref
*   acc: [List](collections-List)\[this->A!\] ref

#### Returns

* [List](collections-List)\[this->A!\] ref^

---

### _contains\[optional B: (A & [HasEq](builtin-HasEq)\[A!\] #read)\]

Private helper for contains, recursively working with ListNodes.


```pony
fun box _contains[optional B: (A & HasEq[A!] #read)](
  ln: this->ListNode[A] ref,
  a: box->B)
: Bool val
```
#### Parameters

*   ln: this->[ListNode](collections-ListNode)\[A\] ref
*   a: box->B

#### Returns

* [Bool](builtin-Bool) val

---

### _increment

```pony
fun ref _increment()
: None val
```

#### Returns

* [None](builtin-None) val

---

### _decrement

```pony
fun ref _decrement()
: None val
```

#### Returns

* [None](builtin-None) val

---

### _set_head

```pony
fun ref _set_head(
  head': (ListNode[A] ref | None val))
: None val
```
#### Parameters

*   head': ([ListNode](collections-ListNode)\[A\] ref | [None](builtin-None) val)

#### Returns

* [None](builtin-None) val

---

### _set_tail

```pony
fun ref _set_tail(
  tail': (ListNode[A] ref | None val))
: None val
```
#### Parameters

*   tail': ([ListNode](collections-ListNode)\[A\] ref | [None](builtin-None) val)

#### Returns

* [None](builtin-None) val

---

### _set_both

```pony
fun ref _set_both(
  node: ListNode[A] ref)
: None val
```
#### Parameters

*   node: [ListNode](collections-ListNode)\[A\] ref

#### Returns

* [None](builtin-None) val

---

