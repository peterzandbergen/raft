# StringRunes

```pony
class ref StringRunes is
  Iterator[U32 val] ref
```

#### Implements

* [Iterator](builtin-Iterator)\[[U32](builtin-U32) val\] ref

---

## Constructors

### create

```pony
new ref create(
  string: String box)
: StringRunes ref^
```
#### Parameters

*   string: [String](builtin-String) box

#### Returns

* [StringRunes](builtin-StringRunes) ref^

---

## Public Functions

### has_next

```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### next

```pony
fun ref next()
: U32 val ?
```

#### Returns

* [U32](builtin-U32) val ?

---

