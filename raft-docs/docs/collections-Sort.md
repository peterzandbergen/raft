# Sort\[A: [Seq](builtin-Seq)\[B\] ref, B: [Comparable](builtin-Comparable)\[B\] #read\]

Implementation of dual-pivot quicksort.


```pony
primitive val Sort[A: Seq[B] ref, B: Comparable[B] #read]
```

## Constructors

### create

```pony
new val create()
: Sort[A, B] val^
```

#### Returns

* [Sort](collections-Sort)\[A, B\] val^

---

## Public Functions

### apply

Sort the given seq.


```pony
fun box apply(
  a: A)
: A^
```
#### Parameters

*   a: A

#### Returns

* A^

---

### eq

```pony
fun box eq(
  that: Sort[A, B] val)
: Bool val
```
#### Parameters

*   that: [Sort](collections-Sort)\[A, B\] val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: Sort[A, B] val)
: Bool val
```
#### Parameters

*   that: [Sort](collections-Sort)\[A, B\] val

#### Returns

* [Bool](builtin-Bool) val

---

## Private Functions

### _sort

```pony
fun box _sort(
  a: A,
  lo: ISize val,
  hi: ISize val)
: None val ?
```
#### Parameters

*   a: A
*   lo: [ISize](builtin-ISize) val
*   hi: [ISize](builtin-ISize) val

#### Returns

* [None](builtin-None) val ?

---

### _swap

```pony
fun box _swap(
  a: A,
  i: ISize val,
  j: ISize val)
: None val ?
```
#### Parameters

*   a: A
*   i: [ISize](builtin-ISize) val
*   j: [ISize](builtin-ISize) val

#### Returns

* [None](builtin-None) val ?

---

