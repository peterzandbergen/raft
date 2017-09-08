# Greater

```pony
primitive val Greater is
  Equatable[(Less val | Equal val | Greater val)] ref
```

#### Implements

* [Equatable](builtin-Equatable)\[([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)\] ref

---

## Constructors

### create

```pony
new val create()
: Greater val^
```

#### Returns

* [Greater](builtin-Greater) val^

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
  that: (Less val | Equal val | Greater val))
: Bool val
```
#### Parameters

*   that: ([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: (Less val | Equal val | Greater val))
: Bool val
```
#### Parameters

*   that: ([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)

#### Returns

* [Bool](builtin-Bool) val

---

