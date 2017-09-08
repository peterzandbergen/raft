# _ToString

Worker type providing simple to string conversions for numbers.


```pony
primitive val _ToString
```

## Constructors

### create

```pony
new val create()
: _ToString val^
```

#### Returns

* [_ToString](builtin-_ToString) val^

---

## Public Functions

### eq

```pony
fun box eq(
  that: _ToString val)
: Bool val
```
#### Parameters

*   that: [_ToString](builtin-_ToString) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: _ToString val)
: Bool val
```
#### Parameters

*   that: [_ToString](builtin-_ToString) val

#### Returns

* [Bool](builtin-Bool) val

---

## Private Functions

### _u64

```pony
fun box _u64(
  x: U64 val,
  neg: Bool val)
: String iso^
```
#### Parameters

*   x: [U64](builtin-U64) val
*   neg: [Bool](builtin-Bool) val

#### Returns

* [String](builtin-String) iso^

---

### _u128

```pony
fun box _u128(
  x: U128 val,
  neg: Bool val)
: String iso^
```
#### Parameters

*   x: [U128](builtin-U128) val
*   neg: [Bool](builtin-Bool) val

#### Returns

* [String](builtin-String) iso^

---

### _f64

```pony
fun box _f64(
  x: F64 val)
: String iso^
```
#### Parameters

*   x: [F64](builtin-F64) val

#### Returns

* [String](builtin-String) iso^

---

