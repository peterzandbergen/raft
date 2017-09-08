# Range\[optional A: ([Real](builtin-Real)\[A\] val & ([I8](builtin-I8) val | [I16](builtin-I16) val | [I32](builtin-I32) val | 
    [I64](builtin-I64) val | [I128](builtin-I128) val | [ILong](builtin-ILong) val | 
    [ISize](builtin-ISize) val | [U8](builtin-U8) val | [U16](builtin-U16) val | 
    [U32](builtin-U32) val | [U64](builtin-U64) val | [U128](builtin-U128) val | 
    [ULong](builtin-ULong) val | [USize](builtin-USize) val | [F32](builtin-F32) val | 
    [F64](builtin-F64) val))\]

Produces [min, max).


```pony
class ref Range[optional A: (Real[A] val & (I8 val | I16 val | I32 val | 
    I64 val | I128 val | ILong val | 
    ISize val | U8 val | U16 val | 
    U32 val | U64 val | U128 val | 
    ULong val | USize val | F32 val | 
    F64 val))] is
  Iterator[A] ref
```

#### Implements

* [Iterator](builtin-Iterator)\[A\] ref

---

## Constructors

### create

```pony
new ref create(
  min: A,
  max: A,
  inc: A = 1)
: Range[A] ref^
```
#### Parameters

*   min: A
*   max: A
*   inc: A = 1

#### Returns

* [Range](collections-Range)\[A\] ref^

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
: A
```

#### Returns

* A

---

### rewind

```pony
fun ref rewind()
: None val
```

#### Returns

* [None](builtin-None) val

---

