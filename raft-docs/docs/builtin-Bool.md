# Bool

```pony
primitive val Bool is
  Stringable box
```

#### Implements

* [Stringable](builtin-Stringable) box

---

## Constructors

### create

```pony
new val create(
  from: Bool val)
: Bool val^
```
#### Parameters

*   from: [Bool](builtin-Bool) val

#### Returns

* [Bool](builtin-Bool) val^

---

## Public Functions

### eq

```pony
fun box eq(
  y: Bool val)
: Bool val
```
#### Parameters

*   y: [Bool](builtin-Bool) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  y: Bool val)
: Bool val
```
#### Parameters

*   y: [Bool](builtin-Bool) val

#### Returns

* [Bool](builtin-Bool) val

---

### op_and

```pony
fun box op_and(
  y: Bool val)
: Bool val
```
#### Parameters

*   y: [Bool](builtin-Bool) val

#### Returns

* [Bool](builtin-Bool) val

---

### op_or

```pony
fun box op_or(
  y: Bool val)
: Bool val
```
#### Parameters

*   y: [Bool](builtin-Bool) val

#### Returns

* [Bool](builtin-Bool) val

---

### op_xor

```pony
fun box op_xor(
  y: Bool val)
: Bool val
```
#### Parameters

*   y: [Bool](builtin-Bool) val

#### Returns

* [Bool](builtin-Bool) val

---

### op_not

```pony
fun box op_not()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### string

```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String) iso^

---

