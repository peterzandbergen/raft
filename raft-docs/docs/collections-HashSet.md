# HashSet\[A: A, H: [HashFunction](collections-HashFunction)\[A!\] val\]

A set, built on top of a HashMap. This is implemented as map of an alias of
a type to itself


```pony
class ref HashSet[A: A, H: HashFunction[A!] val] is
  Comparable[HashSet[A, H] box] ref
```

#### Implements

* [Comparable](builtin-Comparable)\[[HashSet](collections-HashSet)\[A, H\] box\] ref

---

## Constructors

### create

Defaults to a prealloc of 8.


```pony
new ref create(
  prealloc: USize val = 8)
: HashSet[A, H] ref^
```
#### Parameters

*   prealloc: [USize](builtin-USize) val = 8

#### Returns

* [HashSet](collections-HashSet)\[A, H\] ref^

---

## Public Functions

### size

The number of items in the set.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### space

The available space in the set.


```pony
fun box space()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### apply

Return the value if its in the set, otherwise raise an error.


```pony
fun box apply(
  value: box->A!)
: this->A ?
```
#### Parameters

*   value: box->A!

#### Returns

* this->A ?

---

### contains

Checks whether the set contains the value.


```pony
fun box contains(
  value: box->A!)
: Bool val
```
#### Parameters

*   value: box->A!

#### Returns

* [Bool](builtin-Bool) val

---

### clear

Remove all elements from the set.


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None) val

---

### set

Add a value to the set.


```pony
fun ref set(
  value: A)
: None val
```
#### Parameters

*   value: A

#### Returns

* [None](builtin-None) val

---

### unset

Remove a value from the set.


```pony
fun ref unset(
  value: box->A!)
: None val
```
#### Parameters

*   value: box->A!

#### Returns

* [None](builtin-None) val

---

### extract

Remove a value from the set and return it. Raises an error if the value
wasn't in the set.


```pony
fun ref extract(
  value: box->A!)
: A^ ?
```
#### Parameters

*   value: box->A!

#### Returns

* A^ ?

---

### union

Add everything in that to the set.


```pony
fun ref union(
  that: Iterator[A^] ref)
: None val
```
#### Parameters

*   that: [Iterator](builtin-Iterator)\[A^\] ref

#### Returns

* [None](builtin-None) val

---

### intersect\[optional K: [HashFunction](collections-HashFunction)\[box->A!\] val\]

Remove everything that isn't in that.


```pony
fun ref intersect[optional K: HashFunction[box->A!] val](
  that: HashSet[box->A!, K] ref)
: None val
```
#### Parameters

*   that: [HashSet](collections-HashSet)\[box->A!, K\] ref

#### Returns

* [None](builtin-None) val

---

### difference

Remove elements in this which are also in that. Add elements in that which
are not in this.


```pony
fun ref difference(
  that: Iterator[A^] ref)
: None val
```
#### Parameters

*   that: [Iterator](builtin-Iterator)\[A^\] ref

#### Returns

* [None](builtin-None) val

---

### remove

Remove everything that is in that.


```pony
fun ref remove(
  that: Iterator[box->A!] ref)
: None val
```
#### Parameters

*   that: [Iterator](builtin-Iterator)\[box->A!\] ref

#### Returns

* [None](builtin-None) val

---

### add\[optional K: [HashFunction](collections-HashFunction)\[this->A!\] val\]

Add a value to the set.


```pony
fun box add[optional K: HashFunction[this->A!] val](
  value: this->A!)
: HashSet[this->A!, K] ref^
```
#### Parameters

*   value: this->A!

#### Returns

* [HashSet](collections-HashSet)\[this->A!, K\] ref^

---

### sub\[optional K: [HashFunction](collections-HashFunction)\[this->A!\] val\]

Remove a value from the set.


```pony
fun box sub[optional K: HashFunction[this->A!] val](
  value: box->this->A!)
: HashSet[this->A!, K] ref^
```
#### Parameters

*   value: box->this->A!

#### Returns

* [HashSet](collections-HashSet)\[this->A!, K\] ref^

---

### op_or\[optional K: [HashFunction](collections-HashFunction)\[this->A!\] val\]

Create a set with the elements of both this and that.


```pony
fun box op_or[optional K: HashFunction[this->A!] val](
  that: this->HashSet[A, H] ref)
: HashSet[this->A!, K] ref^
```
#### Parameters

*   that: this->[HashSet](collections-HashSet)\[A, H\] ref

#### Returns

* [HashSet](collections-HashSet)\[this->A!, K\] ref^

---

### op_and\[optional K: [HashFunction](collections-HashFunction)\[this->A!\] val\]

Create a set with the elements that are in both this and that.


```pony
fun box op_and[optional K: HashFunction[this->A!] val](
  that: this->HashSet[A, H] ref)
: HashSet[this->A!, K] ref^
```
#### Parameters

*   that: this->[HashSet](collections-HashSet)\[A, H\] ref

#### Returns

* [HashSet](collections-HashSet)\[this->A!, K\] ref^

---

### op_xor\[optional K: [HashFunction](collections-HashFunction)\[this->A!\] val\]

Create a set with the elements that are in either set but not both.


```pony
fun box op_xor[optional K: HashFunction[this->A!] val](
  that: this->HashSet[A, H] ref)
: HashSet[this->A!, K] ref^
```
#### Parameters

*   that: this->[HashSet](collections-HashSet)\[A, H\] ref

#### Returns

* [HashSet](collections-HashSet)\[this->A!, K\] ref^

---

### without\[optional K: [HashFunction](collections-HashFunction)\[this->A!\] val\]

Create a set with the elements of this that are not in that.


```pony
fun box without[optional K: HashFunction[this->A!] val](
  that: this->HashSet[A, H] ref)
: HashSet[this->A!, K] ref^
```
#### Parameters

*   that: this->[HashSet](collections-HashSet)\[A, H\] ref

#### Returns

* [HashSet](collections-HashSet)\[this->A!, K\] ref^

---

### clone\[optional K: [HashFunction](collections-HashFunction)\[this->A!\] val\]

Create a clone. The element type may be different due to aliasing and
viewpoint adaptation.


```pony
fun box clone[optional K: HashFunction[this->A!] val]()
: HashSet[this->A!, K] ref^
```

#### Returns

* [HashSet](collections-HashSet)\[this->A!, K\] ref^

---

### eq

Returns true if the sets contain the same elements.


```pony
fun box eq(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-HashSet)\[A, H\] box

#### Returns

* [Bool](builtin-Bool) val

---

### ne

Returns false if the sets contain the same elements.


```pony
fun box ne(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-HashSet)\[A, H\] box

#### Returns

* [Bool](builtin-Bool) val

---

### lt

Returns true if every element in this is also in that, and this has fewer
elements than that.


```pony
fun box lt(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-HashSet)\[A, H\] box

#### Returns

* [Bool](builtin-Bool) val

---

### le

Returns true if every element in this is also in that.


```pony
fun box le(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-HashSet)\[A, H\] box

#### Returns

* [Bool](builtin-Bool) val

---

### gt

Returns true if every element in that is also in this, and this has more
elements than that.


```pony
fun box gt(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-HashSet)\[A, H\] box

#### Returns

* [Bool](builtin-Bool) val

---

### ge

Returns true if every element in that is also in this.


```pony
fun box ge(
  that: HashSet[A, H] box)
: Bool val
```
#### Parameters

*   that: [HashSet](collections-HashSet)\[A, H\] box

#### Returns

* [Bool](builtin-Bool) val

---

### next_index

Given an index, return the next index that has a populated value. Raise an
error if there is no next populated index.


```pony
fun box next_index(
  prev: USize val = call)
: USize val ?
```
#### Parameters

*   prev: [USize](builtin-USize) val = call

#### Returns

* [USize](builtin-USize) val ?

---

### index

Returns the value at a given index. Raise an error if the index is not
populated.


```pony
fun box index(
  i: USize val)
: this->A ?
```
#### Parameters

*   i: [USize](builtin-USize) val

#### Returns

* this->A ?

---

### values

Return an iterator over the values.


```pony
fun box values()
: SetValues[A, H, this->HashSet[A, H] ref] ref^
```

#### Returns

* [SetValues](collections-SetValues)\[A, H, this->[HashSet](collections-HashSet)\[A, H\] ref\] ref^

---

### compare

```pony
fun box compare(
  that: HashSet[A, H] box)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: [HashSet](collections-HashSet)\[A, H\] box

#### Returns

* ([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)

---

