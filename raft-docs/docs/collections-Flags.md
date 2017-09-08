# Flags\[A: [Flag](collections-Flag)\[B\] val, optional B: (([U8](builtin-U8) val | [U16](builtin-U16) val | [U32](builtin-U32) val | 
    [U64](builtin-U64) val | [U128](builtin-U128) val | [ULong](builtin-ULong) val | 
    [USize](builtin-USize) val) & [Integer](builtin-Integer)\[B\] val)\]

Flags is a set of flags. The flags that are recognised should be passed as
a union type for type parameter A. For example:

primitive SSE
  fun value(): U64 => 1

primitive AVX
  fun value(): U64 => 2

primitive RDTSCP
  fun value(): U64 => 4

type Features is Flags[(SSE | AVX | RDTSCP)]

Type parameter B is the unlying field used to store the flags.


```pony
class ref Flags[A: Flag[B] val, optional B: ((U8 val | U16 val | U32 val | 
    U64 val | U128 val | ULong val | 
    USize val) & Integer[B] val)] is
  Comparable[Flags[A, B] box] ref
```

#### Implements

* [Comparable](builtin-Comparable)\[[Flags](collections-Flags)\[A, B\] box\] ref

---

## Constructors

### create

```pony
new iso create()
: Flags[A, B] iso^
```

#### Returns

* [Flags](collections-Flags)\[A, B\] iso^

---

## Public Functions

### value

Returns the bit encoding of the set flags.


```pony
fun box value()
: B
```

#### Returns

* B

---

### apply

Returns true if the flag is set.


```pony
fun box apply(
  flag: A)
: Bool val
```
#### Parameters

*   flag: A

#### Returns

* [Bool](builtin-Bool) val

---

### all

Sets all bits, including undefined flags.


```pony
fun ref all()
: None val
```

#### Returns

* [None](builtin-None) val

---

### clear

Unsets all flags.


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None) val

---

### set

Sets the flag.


```pony
fun ref set(
  flag: A)
: None val
```
#### Parameters

*   flag: A

#### Returns

* [None](builtin-None) val

---

### unset

Unsets the flag.


```pony
fun ref unset(
  flag: A)
: None val
```
#### Parameters

*   flag: A

#### Returns

* [None](builtin-None) val

---

### flip

Sets the flag if it is unset, unsets the flag if it is set.


```pony
fun ref flip(
  flag: A)
: None val
```
#### Parameters

*   flag: A

#### Returns

* [None](builtin-None) val

---

### union

The union of this and that.


```pony
fun ref union(
  that: Flags[A, B] box)
: None val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [None](builtin-None) val

---

### intersect

The intersection of this and that.


```pony
fun ref intersect(
  that: Flags[A, B] box)
: None val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [None](builtin-None) val

---

### difference

The symmetric difference of this and that.


```pony
fun ref difference(
  that: Flags[A, B] box)
: None val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [None](builtin-None) val

---

### remove

Unset flags that are set in that.


```pony
fun ref remove(
  that: Flags[A, B] box)
: None val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [None](builtin-None) val

---

### add

This with the flag set.


```pony
fun box add(
  flag: A)
: Flags[A, B] iso^
```
#### Parameters

*   flag: A

#### Returns

* [Flags](collections-Flags)\[A, B\] iso^

---

### sub

This with the flag unset.


```pony
fun box sub(
  flag: A)
: Flags[A, B] iso^
```
#### Parameters

*   flag: A

#### Returns

* [Flags](collections-Flags)\[A, B\] iso^

---

### op_or

The union of this and that.


```pony
fun box op_or(
  that: Flags[A, B] box)
: Flags[A, B] iso^
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Flags](collections-Flags)\[A, B\] iso^

---

### op_and

The intersection of this and that.


```pony
fun box op_and(
  that: Flags[A, B] box)
: Flags[A, B] iso^
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Flags](collections-Flags)\[A, B\] iso^

---

### op_xor

The symmetric difference of this and that.


```pony
fun box op_xor(
  that: Flags[A, B] box)
: Flags[A, B] iso^
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Flags](collections-Flags)\[A, B\] iso^

---

### without

The flags in this that are not in that.


```pony
fun box without(
  that: Flags[A, B] box)
: Flags[A, B] iso^
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Flags](collections-Flags)\[A, B\] iso^

---

### clone

Create a clone.


```pony
fun box clone()
: Flags[A, B] iso^
```

#### Returns

* [Flags](collections-Flags)\[A, B\] iso^

---

### eq

Returns true if this has the same flags set as that.


```pony
fun box eq(
  that: Flags[A, B] box)
: Bool val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Bool](builtin-Bool) val

---

### lt

Returns true if the flags set on this are a strict subset of the flags set
on that. Flags is only partially ordered, so lt is not the opposite of ge.


```pony
fun box lt(
  that: Flags[A, B] box)
: Bool val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Bool](builtin-Bool) val

---

### le

Returns true if the flags set on this are a subset of the flags set on
that or they are the same. Flags is only partially ordered, so le is not
the opposite of te.


```pony
fun box le(
  that: Flags[A, B] box)
: Bool val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Bool](builtin-Bool) val

---

### gt

Returns true if the flags set on this are a struct superset of the flags
set on that. Flags is only partially ordered, so gt is not the opposite of
le.


```pony
fun box gt(
  that: Flags[A, B] box)
: Bool val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Bool](builtin-Bool) val

---

### ge

Returns true if the flags set on this are a superset of the flags set on
that or they are the same. Flags is only partially ordered, so ge is not
the opposite of lt.


```pony
fun box ge(
  that: Flags[A, B] box)
: Bool val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Bool](builtin-Bool) val

---

### compare

```pony
fun box compare(
  that: Flags[A, B] box)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* ([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)

---

### ne

```pony
fun box ne(
  that: Flags[A, B] box)
: Bool val
```
#### Parameters

*   that: [Flags](collections-Flags)\[A, B\] box

#### Returns

* [Bool](builtin-Bool) val

---

