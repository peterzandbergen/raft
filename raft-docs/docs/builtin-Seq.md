# Seq\[A: A\]

A sequence of elements.


```pony
interface ref Seq[A: A]
```

## Constructors

### create

Create a sequence, reserving space for len elements.


```pony
new ref create(
  len: USize val = 0)
: Seq[A] ref^
```
#### Parameters

*   len: [USize](builtin-USize) val = 0

#### Returns

* [Seq](builtin-Seq)\[A\] ref^

---

## Public Functions

### reserve

Reserve space for len elements.


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

Returns the number of elements in the sequence.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### apply

Returns the i-th element of the sequence. Raises an error if the index
is out of bounds.


```pony
fun box apply(
  i: USize val)
: this->A ?
```
#### Parameters

*   i: [USize](builtin-USize) val

#### Returns

* this->A ?

---

### update

Replaces the i-th element of the sequence. Returns the previous value.
Raises an error if the index is out of bounds.


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

### clear

Removes all elements from the sequence.


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None) val

---

### push

Adds an element to the end of the sequence.


```pony
fun ref push(
  value: A)
: None val
```
#### Parameters

*   value: A

#### Returns

* [None](builtin-None) val

---

### pop

Removes an element from the end of the sequence.


```pony
fun ref pop()
: A^ ?
```

#### Returns

* A^ ?

---

### unshift

Adds an element to the beginning of the sequence.


```pony
fun ref unshift(
  value: A)
: None val
```
#### Parameters

*   value: A

#### Returns

* [None](builtin-None) val

---

### shift

Removes an element from the beginning of the sequence.


```pony
fun ref shift()
: A^ ?
```

#### Returns

* A^ ?

---

### append

Add len elements to the end of the list, starting from the given
offset.


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

Truncate the sequence to the given length, discarding excess elements.
If the sequence is already smaller than len, do nothing.


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

### values

Returns an iterator over the elements of the sequence.


```pony
fun box values()
: Iterator[this->A] ref^
```

#### Returns

* [Iterator](builtin-Iterator)\[this->A\] ref^

---

