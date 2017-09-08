# Pointer\[A: A\]

A Pointer[A] is a raw memory pointer. It has no descriptor and thus can't be
included in a union or intersection, or be a subtype of any interface. Most
functions on a Pointer[A] are private to maintain memory safety.


```pony
struct ref Pointer[A: A]
```

## Constructors

### create

A null pointer.


```pony
new ref create()
: Pointer[A] ref^
```

#### Returns

* [Pointer](builtin-Pointer)\[A\] ref^

---

### _alloc

Space for len instances of A.


```pony
new ref _alloc(
  len: USize val)
: Pointer[A] ref^
```
#### Parameters

*   len: [USize](builtin-USize) val

#### Returns

* [Pointer](builtin-Pointer)\[A\] ref^

---

## Public Functions

### usize

Convert the pointer into an integer.


```pony
fun tag usize()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### is_null

Return true for a null pointer, false for anything else.


```pony
fun tag is_null()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### eq

Return true if this address is that address.


```pony
fun tag eq(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer)\[A\] tag

#### Returns

* [Bool](builtin-Bool) val

---

### lt

Return true if this address is less than that address.


```pony
fun tag lt(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer)\[A\] tag

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun tag ne(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer)\[A\] tag

#### Returns

* [Bool](builtin-Bool) val

---

### le

```pony
fun tag le(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer)\[A\] tag

#### Returns

* [Bool](builtin-Bool) val

---

### ge

```pony
fun tag ge(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer)\[A\] tag

#### Returns

* [Bool](builtin-Bool) val

---

### gt

```pony
fun tag gt(
  that: Pointer[A] tag)
: Bool val
```
#### Parameters

*   that: [Pointer](builtin-Pointer)\[A\] tag

#### Returns

* [Bool](builtin-Bool) val

---

### hash

Returns a hash of the address.


```pony
fun tag hash()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

## Private Functions

### _realloc

Keep the contents, but reserve space for len instances of A.


```pony
fun ref _realloc(
  len: USize val)
: Pointer[A] ref
```
#### Parameters

*   len: [USize](builtin-USize) val

#### Returns

* [Pointer](builtin-Pointer)\[A\] ref

---

### _unsafe

Unsafe change in reference capability.


```pony
fun tag _unsafe()
: Pointer[A] ref
```

#### Returns

* [Pointer](builtin-Pointer)\[A\] ref

---

### _apply

Retrieve index i.


```pony
fun box _apply(
  i: USize val)
: this->A
```
#### Parameters

*   i: [USize](builtin-USize) val

#### Returns

* this->A

---

### _update

Set index i and return the previous value.


```pony
fun ref _update(
  i: USize val,
  value: A!)
: A^
```
#### Parameters

*   i: [USize](builtin-USize) val
*   value: A!

#### Returns

* A^

---

### _offset

Return a pointer to the n-th element.


```pony
fun box _offset(
  n: USize val)
: this->Pointer[A] ref
```
#### Parameters

*   n: [USize](builtin-USize) val

#### Returns

* this->[Pointer](builtin-Pointer)\[A\] ref

---

### _element_size

Return the size of a single element in an array of type A.


```pony
fun tag _element_size()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### _insert

Creates space for n new elements at the head, moving following elements.
The array length before this should be len, and the available space should
be at least n + len.


```pony
fun ref _insert(
  n: USize val,
  len: USize val)
: Pointer[A] ref
```
#### Parameters

*   n: [USize](builtin-USize) val
*   len: [USize](builtin-USize) val

#### Returns

* [Pointer](builtin-Pointer)\[A\] ref

---

### _delete

Delete n elements from the head of pointer, compact remaining elements of
the underlying array. The array length before this should be n + len.
Returns the first deleted element.


```pony
fun ref _delete(
  n: USize val,
  len: USize val)
: A^
```
#### Parameters

*   n: [USize](builtin-USize) val
*   len: [USize](builtin-USize) val

#### Returns

* A^

---

### _copy_to

Copy n elements from this to that.


```pony
fun box _copy_to(
  that: Pointer[this->A!] ref,
  n: USize val)
: this->Pointer[A] ref
```
#### Parameters

*   that: [Pointer](builtin-Pointer)\[this->A!\] ref
*   n: [USize](builtin-USize) val

#### Returns

* this->[Pointer](builtin-Pointer)\[A\] ref

---

### _consume_from

Copy n elements from that to this.


```pony
fun ref _consume_from(
  that: Pointer[A] ref^,
  n: USize val)
: Pointer[A] ref^
```
#### Parameters

*   that: [Pointer](builtin-Pointer)\[A\] ref^
*   n: [USize](builtin-USize) val

#### Returns

* [Pointer](builtin-Pointer)\[A\] ref^

---

