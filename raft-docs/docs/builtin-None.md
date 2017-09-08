# None

```pony
primitive val None is
  Stringable box
```

#### Implements

* [Stringable](builtin-Stringable) box

---

## Constructors

### create

```pony
new val create()
: None val^
```

#### Returns

* [None](builtin-None) val^

---

## Public Functions

### string

```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String) iso^

---

### eq

```pony
fun box eq(
  that: None val)
: Bool val
```
#### Parameters

*   that: [None](builtin-None) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: None val)
: Bool val
```
#### Parameters

*   that: [None](builtin-None) val

#### Returns

* [Bool](builtin-Bool) val

---

