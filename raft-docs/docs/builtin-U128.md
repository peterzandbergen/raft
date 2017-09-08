# U128

```pony
primitive val U128 is
  _UnsignedInteger[U128 val] val
```

#### Implements

* [_UnsignedInteger](builtin-_UnsignedInteger)\[[U128](builtin-U128) val\] val

---

## Constructors

### create

```pony
new val create(
  value: U128 val)
: U128 val^
```
#### Parameters

*   value: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val^

---

### from\[A: (([I8](builtin-I8) val | [I16](builtin-I16) val | [I32](builtin-I32) val | 
    [I64](builtin-I64) val | [I128](builtin-I128) val | [ILong](builtin-ILong) val | 
    [ISize](builtin-ISize) val | [U8](builtin-U8) val | [U16](builtin-U16) val | 
    [U32](builtin-U32) val | [U64](builtin-U64) val | [U128](builtin-U128) val | 
    [ULong](builtin-ULong) val | [USize](builtin-USize) val | [F32](builtin-F32) val | 
    [F64](builtin-F64) val) & [Real](builtin-Real)\[A\] val)\]

```pony
new val from[A: ((I8 val | I16 val | I32 val | 
    I64 val | I128 val | ILong val | 
    ISize val | U8 val | U16 val | 
    U32 val | U64 val | U128 val | 
    ULong val | USize val | F32 val | 
    F64 val) & Real[A] val)](
  a: A)
: U128 val^
```
#### Parameters

*   a: A

#### Returns

* [U128](builtin-U128) val^

---

### min_value

```pony
new val min_value()
: U128 val^
```

#### Returns

* [U128](builtin-U128) val^

---

### max_value

```pony
new val max_value()
: U128 val^
```

#### Returns

* [U128](builtin-U128) val^

---

## Public Functions

### next_pow2

```pony
fun box next_pow2()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### abs

```pony
fun box abs()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### bswap

```pony
fun box bswap()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### popcount

```pony
fun box popcount()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### clz

```pony
fun box clz()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### ctz

```pony
fun box ctz()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### clz_unsafe

Unsafe operation.
If this is 0, the result is undefined.


```pony
fun box clz_unsafe()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### ctz_unsafe

Unsafe operation.
If this is 0, the result is undefined.


```pony
fun box ctz_unsafe()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### bitwidth

```pony
fun box bitwidth()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### min

```pony
fun box min(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### max

```pony
fun box max(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### hash

```pony
fun box hash()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### string

```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String) iso^

---

### mul

```pony
fun box mul(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### divmod

```pony
fun box divmod(
  y: U128 val)
: (U128 val , U128 val)
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* ([U128](builtin-U128) val , [U128](builtin-U128) val)

---

### div

```pony
fun box div(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### mod

```pony
fun box mod(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### mul_unsafe

Unsafe operation.
If the operation overflows, the result is undefined.


```pony
fun box mul_unsafe(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### divmod_unsafe

Unsafe operation.
If y is 0, the result is undefined.
If the operation overflows, the result is undefined.


```pony
fun box divmod_unsafe(
  y: U128 val)
: (U128 val , U128 val)
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* ([U128](builtin-U128) val , [U128](builtin-U128) val)

---

### div_unsafe

Unsafe operation.
If y is 0, the result is undefined.
If the operation overflows, the result is undefined.


```pony
fun box div_unsafe(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### mod_unsafe

Unsafe operation.
If y is 0, the result is undefined.
If the operation overflows, the result is undefined.


```pony
fun box mod_unsafe(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### f32

```pony
fun box f32()
: F32 val
```

#### Returns

* [F32](builtin-F32) val

---

### f64

```pony
fun box f64()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### f32_unsafe

Unsafe operation.
If the value doesn't fit in the destination type, the result is undefined.


```pony
fun box f32_unsafe()
: F32 val
```

#### Returns

* [F32](builtin-F32) val

---

### f64_unsafe

Unsafe operation.
If the value doesn't fit in the destination type, the result is undefined.


```pony
fun box f64_unsafe()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### shl

```pony
fun box shl(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### shr

```pony
fun box shr(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### shl_unsafe

```pony
fun box shl_unsafe(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### shr_unsafe

```pony
fun box shr_unsafe(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### rotl

```pony
fun box rotl(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### rotr

```pony
fun box rotr(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### add_unsafe

```pony
fun box add_unsafe(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### sub_unsafe

```pony
fun box sub_unsafe(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### neg_unsafe

```pony
fun box neg_unsafe()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### op_and

```pony
fun box op_and(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### op_or

```pony
fun box op_or(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### op_xor

```pony
fun box op_xor(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### op_not

```pony
fun box op_not()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### add

```pony
fun box add(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### sub

```pony
fun box sub(
  y: U128 val)
: U128 val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [U128](builtin-U128) val

---

### neg

```pony
fun box neg()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### eq

```pony
fun box eq(
  y: U128 val)
: Bool val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  y: U128 val)
: Bool val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [Bool](builtin-Bool) val

---

### lt

```pony
fun box lt(
  y: U128 val)
: Bool val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [Bool](builtin-Bool) val

---

### le

```pony
fun box le(
  y: U128 val)
: Bool val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [Bool](builtin-Bool) val

---

### ge

```pony
fun box ge(
  y: U128 val)
: Bool val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [Bool](builtin-Bool) val

---

### gt

```pony
fun box gt(
  y: U128 val)
: Bool val
```
#### Parameters

*   y: [U128](builtin-U128) val

#### Returns

* [Bool](builtin-Bool) val

---

### i8

```pony
fun box i8()
: I8 val
```

#### Returns

* [I8](builtin-I8) val

---

### i16

```pony
fun box i16()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### i32

```pony
fun box i32()
: I32 val
```

#### Returns

* [I32](builtin-I32) val

---

### i64

```pony
fun box i64()
: I64 val
```

#### Returns

* [I64](builtin-I64) val

---

### i128

```pony
fun box i128()
: I128 val
```

#### Returns

* [I128](builtin-I128) val

---

### ilong

```pony
fun box ilong()
: ILong val
```

#### Returns

* [ILong](builtin-ILong) val

---

### isize

```pony
fun box isize()
: ISize val
```

#### Returns

* [ISize](builtin-ISize) val

---

### u8

```pony
fun box u8()
: U8 val
```

#### Returns

* [U8](builtin-U8) val

---

### u16

```pony
fun box u16()
: U16 val
```

#### Returns

* [U16](builtin-U16) val

---

### u32

```pony
fun box u32()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### u64

```pony
fun box u64()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### u128

```pony
fun box u128()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### ulong

```pony
fun box ulong()
: ULong val
```

#### Returns

* [ULong](builtin-ULong) val

---

### usize

```pony
fun box usize()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### i8_unsafe

```pony
fun box i8_unsafe()
: I8 val
```

#### Returns

* [I8](builtin-I8) val

---

### i16_unsafe

```pony
fun box i16_unsafe()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### i32_unsafe

```pony
fun box i32_unsafe()
: I32 val
```

#### Returns

* [I32](builtin-I32) val

---

### i64_unsafe

```pony
fun box i64_unsafe()
: I64 val
```

#### Returns

* [I64](builtin-I64) val

---

### i128_unsafe

```pony
fun box i128_unsafe()
: I128 val
```

#### Returns

* [I128](builtin-I128) val

---

### ilong_unsafe

```pony
fun box ilong_unsafe()
: ILong val
```

#### Returns

* [ILong](builtin-ILong) val

---

### isize_unsafe

```pony
fun box isize_unsafe()
: ISize val
```

#### Returns

* [ISize](builtin-ISize) val

---

### u8_unsafe

```pony
fun box u8_unsafe()
: U8 val
```

#### Returns

* [U8](builtin-U8) val

---

### u16_unsafe

```pony
fun box u16_unsafe()
: U16 val
```

#### Returns

* [U16](builtin-U16) val

---

### u32_unsafe

```pony
fun box u32_unsafe()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### u64_unsafe

```pony
fun box u64_unsafe()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### u128_unsafe

```pony
fun box u128_unsafe()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### ulong_unsafe

```pony
fun box ulong_unsafe()
: ULong val
```

#### Returns

* [ULong](builtin-ULong) val

---

### usize_unsafe

```pony
fun box usize_unsafe()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### compare

```pony
fun box compare(
  that: U128 val)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: [U128](builtin-U128) val

#### Returns

* ([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)

---

## Private Functions

### _value

```pony
fun box _value()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

