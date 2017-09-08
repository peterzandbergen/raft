# FloatingPoint\[A: [FloatingPoint](builtin-FloatingPoint)\[A\] val\]

```pony
trait val FloatingPoint[A: FloatingPoint[A] val] is
  Real[A] val
```

#### Implements

* [Real](builtin-Real)\[A\] val

---

## Constructors

### min_normalised

```pony
new val min_normalised()
: FloatingPoint[A] val^
```

#### Returns

* [FloatingPoint](builtin-FloatingPoint)\[A\] val^

---

### epsilon

```pony
new val epsilon()
: FloatingPoint[A] val^
```

#### Returns

* [FloatingPoint](builtin-FloatingPoint)\[A\] val^

---

### create

```pony
new val create(
  value: A)
: Real[A] val^
```
#### Parameters

*   value: A

#### Returns

* [Real](builtin-Real)\[A\] val^

---

### from\[B: (([I8](builtin-I8) val | [I16](builtin-I16) val | [I32](builtin-I32) val | 
    [I64](builtin-I64) val | [I128](builtin-I128) val | [ILong](builtin-ILong) val | 
    [ISize](builtin-ISize) val | [U8](builtin-U8) val | [U16](builtin-U16) val | 
    [U32](builtin-U32) val | [U64](builtin-U64) val | [U128](builtin-U128) val | 
    [ULong](builtin-ULong) val | [USize](builtin-USize) val | [F32](builtin-F32) val | 
    [F64](builtin-F64) val) & [Real](builtin-Real)\[B\] val)\]

```pony
new val from[B: ((I8 val | I16 val | I32 val | 
    I64 val | I128 val | ILong val | 
    ISize val | U8 val | U16 val | 
    U32 val | U64 val | U128 val | 
    ULong val | USize val | F32 val | 
    F64 val) & Real[B] val)](
  a: B)
: Real[A] val^
```
#### Parameters

*   a: B

#### Returns

* [Real](builtin-Real)\[A\] val^

---

### min_value

```pony
new val min_value()
: Real[A] val^
```

#### Returns

* [Real](builtin-Real)\[A\] val^

---

### max_value

```pony
new val max_value()
: Real[A] val^
```

#### Returns

* [Real](builtin-Real)\[A\] val^

---

## Public Functions

### radix

```pony
fun tag radix()
: U8 val
```

#### Returns

* [U8](builtin-U8) val

---

### precision2

```pony
fun tag precision2()
: U8 val
```

#### Returns

* [U8](builtin-U8) val

---

### precision10

```pony
fun tag precision10()
: U8 val
```

#### Returns

* [U8](builtin-U8) val

---

### min_exp2

```pony
fun tag min_exp2()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### min_exp10

```pony
fun tag min_exp10()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### max_exp2

```pony
fun tag max_exp2()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### max_exp10

```pony
fun tag max_exp10()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### add_unsafe

Unsafe operation.
If any input or output of the operation is +/- infinity or NaN, the result
is undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box add_unsafe(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### sub_unsafe

Unsafe operation.
If any input or output of the operation is +/- infinity or NaN, the result
is undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box sub_unsafe(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### mul_unsafe

Unsafe operation.
If any input or output of the operation is +/- infinity or NaN, the result
is undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box mul_unsafe(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### div_unsafe

Unsafe operation.
If any input or output of the operation is +/- infinity or NaN, the result
is undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box div_unsafe(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### divmod_unsafe

Unsafe operation.
If any input or output of the operation is +/- infinity or NaN, the result
is undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box divmod_unsafe(
  y: A)
: (A , A)
```
#### Parameters

*   y: A

#### Returns

* (A , A)

---

### mod_unsafe

Unsafe operation.
If any input or output of the operation is +/- infinity or NaN, the result
is undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box mod_unsafe(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### neg_unsafe

Unsafe operation.
If any input or output of the operation is +/- infinity or NaN, the result
is undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box neg_unsafe()
: A
```

#### Returns

* A

---

### eq_unsafe

Unsafe operation.
If any input of the operation is +/- infinity or NaN, the result is
undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box eq_unsafe(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### ne_unsafe

Unsafe operation.
If any input of the operation is +/- infinity or NaN, the result is
undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box ne_unsafe(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### lt_unsafe

Unsafe operation.
If any input of the operation is +/- infinity or NaN, the result is
undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box lt_unsafe(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### le_unsafe

Unsafe operation.
If any input of the operation is +/- infinity or NaN, the result is
undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box le_unsafe(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### ge_unsafe

Unsafe operation.
If any input of the operation is +/- infinity or NaN, the result is
undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box ge_unsafe(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### gt_unsafe

Unsafe operation.
If any input of the operation is +/- infinity or NaN, the result is
undefined.
The operation isn't required to fully comply to IEEE 754 semantics.


```pony
fun box gt_unsafe(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### abs

```pony
fun box abs()
: A
```

#### Returns

* A

---

### ceil

```pony
fun box ceil()
: A
```

#### Returns

* A

---

### floor

```pony
fun box floor()
: A
```

#### Returns

* A

---

### round

```pony
fun box round()
: A
```

#### Returns

* A

---

### trunc

```pony
fun box trunc()
: A
```

#### Returns

* A

---

### finite

```pony
fun box finite()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### infinite

```pony
fun box infinite()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### nan

```pony
fun box nan()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### ldexp

```pony
fun box ldexp(
  x: A,
  exponent: I32 val)
: A
```
#### Parameters

*   x: A
*   exponent: [I32](builtin-I32) val

#### Returns

* A

---

### frexp

```pony
fun box frexp()
: (A , U32 val)
```

#### Returns

* (A , [U32](builtin-U32) val)

---

### log

```pony
fun box log()
: A
```

#### Returns

* A

---

### log2

```pony
fun box log2()
: A
```

#### Returns

* A

---

### log10

```pony
fun box log10()
: A
```

#### Returns

* A

---

### logb

```pony
fun box logb()
: A
```

#### Returns

* A

---

### pow

```pony
fun box pow(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### powi

```pony
fun box powi(
  y: I32 val)
: A
```
#### Parameters

*   y: [I32](builtin-I32) val

#### Returns

* A

---

### sqrt

```pony
fun box sqrt()
: A
```

#### Returns

* A

---

### sqrt_unsafe

Unsafe operation.
If this is negative, the result is undefined.


```pony
fun box sqrt_unsafe()
: A
```

#### Returns

* A

---

### cbrt

```pony
fun box cbrt()
: A
```

#### Returns

* A

---

### exp

```pony
fun box exp()
: A
```

#### Returns

* A

---

### exp2

```pony
fun box exp2()
: A
```

#### Returns

* A

---

### cos

```pony
fun box cos()
: A
```

#### Returns

* A

---

### sin

```pony
fun box sin()
: A
```

#### Returns

* A

---

### tan

```pony
fun box tan()
: A
```

#### Returns

* A

---

### cosh

```pony
fun box cosh()
: A
```

#### Returns

* A

---

### sinh

```pony
fun box sinh()
: A
```

#### Returns

* A

---

### tanh

```pony
fun box tanh()
: A
```

#### Returns

* A

---

### acos

```pony
fun box acos()
: A
```

#### Returns

* A

---

### asin

```pony
fun box asin()
: A
```

#### Returns

* A

---

### atan

```pony
fun box atan()
: A
```

#### Returns

* A

---

### atan2

```pony
fun box atan2(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### acosh

```pony
fun box acosh()
: A
```

#### Returns

* A

---

### asinh

```pony
fun box asinh()
: A
```

#### Returns

* A

---

### atanh

```pony
fun box atanh()
: A
```

#### Returns

* A

---

### copysign

```pony
fun box copysign(
  sign: A)
: A
```
#### Parameters

*   sign: A

#### Returns

* A

---

### string

```pony
fun box string()
: String iso^
```

#### Returns

* [String](builtin-String) iso^

---

### add

```pony
fun box add(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### sub

```pony
fun box sub(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### mul

```pony
fun box mul(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### div

```pony
fun box div(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### divmod

```pony
fun box divmod(
  y: A)
: (A , A)
```
#### Parameters

*   y: A

#### Returns

* (A , A)

---

### mod

```pony
fun box mod(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### neg

```pony
fun box neg()
: A
```

#### Returns

* A

---

### eq

```pony
fun box eq(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### lt

```pony
fun box lt(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### le

```pony
fun box le(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### ge

```pony
fun box ge(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### gt

```pony
fun box gt(
  y: A)
: Bool val
```
#### Parameters

*   y: A

#### Returns

* [Bool](builtin-Bool) val

---

### min

```pony
fun box min(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### max

```pony
fun box max(
  y: A)
: A
```
#### Parameters

*   y: A

#### Returns

* A

---

### hash

```pony
fun box hash()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

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

### f32_unsafe

```pony
fun box f32_unsafe()
: F32 val
```

#### Returns

* [F32](builtin-F32) val

---

### f64_unsafe

```pony
fun box f64_unsafe()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### compare

```pony
fun box compare(
  that: A)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: A

#### Returns

* ([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)

---

## Private Functions

### _value

```pony
fun box _value()
: A
```

#### Returns

* A

---

