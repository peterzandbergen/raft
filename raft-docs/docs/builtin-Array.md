# Array\[A: A\]

Contiguous, resizable memory to store elements of type A.


```pony
class ref Array[A: A] is
  Seq[A] ref
```

#### Implements

* [Seq](builtin-Seq)\[A\] ref

---

## Constructors

### create

Create an array with zero elements, but space for len elements.


```pony
new ref create(
  len: USize val = 0)
: Array[A] ref^
```
#### Parameters

*   len: [USize](builtin-USize) val = 0

#### Returns

* [Array](builtin-Array)\[A\] ref^

---

### init

Create an array of len elements, all initialised to the given value.


```pony
new ref init(
  from: A^,
  len: USize val)
: Array[A] ref^
```
#### Parameters

*   from: A^
*   len: [USize](builtin-USize) val

#### Returns

* [Array](builtin-Array)\[A\] ref^

---

### from_cpointer

Create an array from a C-style pointer and length. The contents are not
copied.


```pony
new ref from_cpointer(
  ptr: Pointer[A] ref,
  len: USize val,
  alloc: USize val = 0)
: Array[A] ref^
```
#### Parameters

*   ptr: [Pointer](builtin-Pointer)\[A\] ref
*   len: [USize](builtin-USize) val
*   alloc: [USize](builtin-USize) val = 0

#### Returns

* [Array](builtin-Array)\[A\] ref^

---

## Public Functions

### cpointer

Return the underlying C-style pointer.


```pony
fun box cpointer(
  offset: USize val = 0)
: Pointer[A] tag
```
#### Parameters

*   offset: [USize](builtin-USize) val = 0

#### Returns

* [Pointer](builtin-Pointer)\[A\] tag

---

### size

The number of elements in the array.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### space

The available space in the array.


```pony
fun box space()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### reserve

Reserve space for len elements, including whatever elements are already in
the array. Array space grows geometrically.


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

### compact

Try to remove unused space, making it available for garbage collection. The
request may be ignored.


```pony
fun ref compact()
: None val
```

#### Returns

* [None](builtin-None) val

---

### undefined\[optional B: (A & [Real](builtin-Real)\[B\] val & ([I8](builtin-I8) val | [I16](builtin-I16) val | [I32](builtin-I32) val | 
    [I64](builtin-I64) val | [I128](builtin-I128) val | [ILong](builtin-ILong) val | 
    [ISize](builtin-ISize) val | [U8](builtin-U8) val | [U16](builtin-U16) val | 
    [U32](builtin-U32) val | [U64](builtin-U64) val | [U128](builtin-U128) val | 
    [ULong](builtin-ULong) val | [USize](builtin-USize) val | [F32](builtin-F32) val | 
    [F64](builtin-F64) val))\]

Resize to len elements, populating previously empty elements with random
memory. This is only allowed for an array of numbers.


```pony
fun ref undefined[optional B: (A & Real[B] val & (I8 val | I16 val | I32 val | 
    I64 val | I128 val | ILong val | 
    ISize val | U8 val | U16 val | 
    U32 val | U64 val | U128 val | 
    ULong val | USize val | F32 val | 
    F64 val))](
  len: USize val)
: None val
```
#### Parameters

*   len: [USize](builtin-USize) val

#### Returns

* [None](builtin-None) val

---

### apply

Get the i-th element, raising an error if the index is out of bounds.


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

Change the i-th element, raising an error if the index is out of bounds.


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

### insert

Insert an element into the array. Elements after this are moved up by one
index, extending the array.
An out of bounds index raises an error.


```pony
fun ref insert(
  i: USize val,
  value: A)
: None val ?
```
#### Parameters

*   i: [USize](builtin-USize) val
*   value: A

#### Returns

* [None](builtin-None) val ?

---

### delete

Delete an element from the array. Elements after this are moved down by one
index, compacting the array.
An out of bounds index raises an error.
The deleted element is returned.


```pony
fun ref delete(
  i: USize val)
: A^ ?
```
#### Parameters

*   i: [USize](builtin-USize) val

#### Returns

* A^ ?

---

### truncate

Truncate an array to the given length, discarding excess elements. If the
array is already smaller than len, do nothing.


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

### trim_in_place

Trim the array to a portion of itself, covering `from` until `to`.
Unlike slice, the operation does not allocate a new array nor copy elements.


```pony
fun ref trim_in_place(
  from: USize val = 0,
  to: USize val = call)
: None val
```
#### Parameters

*   from: [USize](builtin-USize) val = 0
*   to: [USize](builtin-USize) val = call

#### Returns

* [None](builtin-None) val

---

### trim

Return a shared portion of this array, covering `from` until `to`.
Both the original and the new array are immutable, as they share memory.
The operation does not allocate a new array pointer nor copy elements.


```pony
fun val trim(
  from: USize val = 0,
  to: USize val = call)
: Array[A] val
```
#### Parameters

*   from: [USize](builtin-USize) val = 0
*   to: [USize](builtin-USize) val = call

#### Returns

* [Array](builtin-Array)\[A\] val

---

### copy_to

Copy len elements from this(src_idx) to dst(dst_idx).


```pony
fun box copy_to(
  dst: Array[this->A!] ref,
  src_idx: USize val,
  dst_idx: USize val,
  len: USize val)
: None val
```
#### Parameters

*   dst: [Array](builtin-Array)\[this->A!\] ref
*   src_idx: [USize](builtin-USize) val
*   dst_idx: [USize](builtin-USize) val
*   len: [USize](builtin-USize) val

#### Returns

* [None](builtin-None) val

---

### remove

Remove n elements from the array, beginning at index i.


```pony
fun ref remove(
  i: USize val,
  n: USize val)
: None val
```
#### Parameters

*   i: [USize](builtin-USize) val
*   n: [USize](builtin-USize) val

#### Returns

* [None](builtin-None) val

---

### clear

Remove all elements from the array.


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None) val

---

### push

Add an element to the end of the array.


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

Remove an element from the end of the array.
The removed element is returned.


```pony
fun ref pop()
: A^ ?
```

#### Returns

* A^ ?

---

### unshift

Add an element to the beginning of the array.


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

Remove an element from the beginning of the array.
The removed element is returned.


```pony
fun ref shift()
: A^ ?
```

#### Returns

* A^ ?

---

### append

Append the elements from a sequence, starting from the given offset.


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

Add len iterated elements to the end of the array, starting from the given
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

### find

Find the `nth` appearance of `value` from the beginning of the array,
starting at `offset` and examining higher indices, and using the supplied
`predicate` for comparisons. Returns the index of the value, or raise an
error if the value isn't present.

By default, the search starts at the first element of the array, returns
the first instance of `value` found, and uses object identity for
comparison.


```pony
fun box find(
  value: A!,
  offset: USize val = 0,
  nth: USize val = 0,
  predicate: {(box->A!, box->A!): Bool}[A] val = lambda)
: USize val ?
```
#### Parameters

*   value: A!
*   offset: [USize](builtin-USize) val = 0
*   nth: [USize](builtin-USize) val = 0
*   predicate: {(box->A!, box->A!): Bool}[A] val = lambda

#### Returns

* [USize](builtin-USize) val ?

---

### contains

Returns true if the array contains `value`, false otherwise.


```pony
fun box contains(
  value: A!,
  predicate: {(box->A!, box->A!): Bool}[A] val = lambda)
: Bool val
```
#### Parameters

*   value: A!
*   predicate: {(box->A!, box->A!): Bool}[A] val = lambda

#### Returns

* [Bool](builtin-Bool) val

---

### rfind

Find the `nth` appearance of `value` from the end of the array, starting at
`offset` and examining lower indices, and using the supplied `predicate` for
comparisons. Returns the index of the value, or raise an error if the value
isn't present.

By default, the search starts at the last element of the array, returns the
first instance of `value` found, and uses object identity for comparison.


```pony
fun box rfind(
  value: A!,
  offset: USize val = call,
  nth: USize val = 0,
  predicate: {(box->A!, box->A!): Bool}[A] val = lambda)
: USize val ?
```
#### Parameters

*   value: A!
*   offset: [USize](builtin-USize) val = call
*   nth: [USize](builtin-USize) val = 0
*   predicate: {(box->A!, box->A!): Bool}[A] val = lambda

#### Returns

* [USize](builtin-USize) val ?

---

### clone

Clone the array.
The new array contains references to the same elements that the old array
contains, the elements themselves are not cloned.


```pony
fun box clone()
: Array[this->A!] ref^
```

#### Returns

* [Array](builtin-Array)\[this->A!\] ref^

---

### slice

Create a new array that is a clone of a portion of this array. The range is
exclusive and saturated.
The new array contains references to the same elements that the old array
contains, the elements themselves are not cloned.


```pony
fun box slice(
  from: USize val = 0,
  to: USize val = call,
  step: USize val = 1)
: Array[this->A!] ref^
```
#### Parameters

*   from: [USize](builtin-USize) val = 0
*   to: [USize](builtin-USize) val = call
*   step: [USize](builtin-USize) val = 1

#### Returns

* [Array](builtin-Array)\[this->A!\] ref^

---

### permute

Create a new array with the elements permuted.
Permute to an arbitrary order that may include duplicates. An out of bounds
index raises an error.
The new array contains references to the same elements that the old array
contains, the elements themselves are not copied.


```pony
fun box permute(
  indices: Iterator[USize val] ref)
: Array[this->A!] ref^ ?
```
#### Parameters

*   indices: [Iterator](builtin-Iterator)\[[USize](builtin-USize) val\] ref

#### Returns

* [Array](builtin-Array)\[this->A!\] ref^ ?

---

### reverse

Create a new array with the elements in reverse order.
The new array contains references to the same elements that the old array
contains, the elements themselves are not copied.


```pony
fun box reverse()
: Array[this->A!] ref^
```

#### Returns

* [Array](builtin-Array)\[this->A!\] ref^

---

### reverse_in_place

Reverse the array in place.


```pony
fun ref reverse_in_place()
: None val
```

#### Returns

* [None](builtin-None) val

---

### keys

Return an iterator over the indices in the array.


```pony
fun box keys()
: ArrayKeys[A, this->Array[A] ref] ref^
```

#### Returns

* [ArrayKeys](builtin-ArrayKeys)\[A, this->[Array](builtin-Array)\[A\] ref\] ref^

---

### values

Return an iterator over the values in the array.


```pony
fun box values()
: ArrayValues[A, this->Array[A] ref] ref^
```

#### Returns

* [ArrayValues](builtin-ArrayValues)\[A, this->[Array](builtin-Array)\[A\] ref\] ref^

---

### pairs

Return an iterator over the (index, value) pairs in the array.


```pony
fun box pairs()
: ArrayPairs[A, this->Array[A] ref] ref^
```

#### Returns

* [ArrayPairs](builtin-ArrayPairs)\[A, this->[Array](builtin-Array)\[A\] ref\] ref^

---

## Private Functions

### _copy_to

Copy copy_len elements from this to that at specified offsets.


```pony
fun box _copy_to(
  ptr: Pointer[this->A!] ref,
  copy_len: USize val,
  from_offset: USize val = 0,
  to_offset: USize val = 0)
: None val
```
#### Parameters

*   ptr: [Pointer](builtin-Pointer)\[this->A!\] ref
*   copy_len: [USize](builtin-USize) val
*   from_offset: [USize](builtin-USize) val = 0
*   to_offset: [USize](builtin-USize) val = 0

#### Returns

* [None](builtin-None) val

---

