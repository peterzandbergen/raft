# _Color

Strings to embedded in text to specify colours. These are copies of the
strings defined in packages/term. They are duplicated here to avoid a
dependency.


```pony
primitive val _Color
```

## Constructors

### create

```pony
new val create()
: _Color val^
```

#### Returns

* [_Color](ponytest-_Color) val^

---

## Public Functions

### reset

Resets all colours and text styles to the default.


```pony
fun box reset()
: String val
```

#### Returns

* [String](builtin-String) val

---

### red

Bright red text.


```pony
fun box red()
: String val
```

#### Returns

* [String](builtin-String) val

---

### green

Bright green text.


```pony
fun box green()
: String val
```

#### Returns

* [String](builtin-String) val

---

### eq

```pony
fun box eq(
  that: _Color val)
: Bool val
```
#### Parameters

*   that: [_Color](ponytest-_Color) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: _Color val)
: Bool val
```
#### Parameters

*   that: [_Color](ponytest-_Color) val

#### Returns

* [Bool](builtin-Bool) val

---

