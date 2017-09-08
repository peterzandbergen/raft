# StringBytes

```pony
class ref StringBytes is
  Iterator[U8 val] ref
```

#### Implements

* [Iterator](builtin-Iterator)\[[U8](builtin-U8) val\] ref

---

## Constructors

### create

```pony
new ref create(
  string: String box)
: StringBytes ref^
```
#### Parameters

*   string: [String](builtin-String) box

#### Returns

* [StringBytes](builtin-StringBytes) ref^

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
: U8 val ?
```

#### Returns

* [U8](builtin-U8) val ?

---

