# Comparable\[A: [Comparable](builtin-Comparable)\[A\] #read\]

```pony
interface ref Comparable[A: Comparable[A] #read] is
  Equatable[A] ref
```

#### Implements

* [Equatable](builtin-Equatable)\[A\] ref

---

## Public Functions

### lt

```pony
fun box lt(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool) val

---

### le

```pony
fun box le(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool) val

---

### ge

```pony
fun box ge(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool) val

---

### gt

```pony
fun box gt(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool) val

---

### compare

```pony
fun box compare(
  that: box->A)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: box->A

#### Returns

* ([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)

---

### eq

```pony
fun box eq(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: box->A)
: Bool val
```
#### Parameters

*   that: box->A

#### Returns

* [Bool](builtin-Bool) val

---

