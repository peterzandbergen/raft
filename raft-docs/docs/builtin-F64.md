# F64

```pony
primitive val F64 is
  FloatingPoint[F64 val] val
```

#### Implements

* [FloatingPoint](builtin-FloatingPoint)\[[F64](builtin-F64) val\] val

---

## Constructors

### create

```pony
new val create(
  value: F64 val = 0)
: F64 val^
```
#### Parameters

*   value: [F64](builtin-F64) val = 0

#### Returns

* [F64](builtin-F64) val^

---

### pi

```pony
new val pi()
: F64 val^
```

#### Returns

* [F64](builtin-F64) val^

---

### e

```pony
new val e()
: F64 val^
```

#### Returns

* [F64](builtin-F64) val^

---

### _nan

```pony
new val _nan()
: F64 val^
```

#### Returns

* [F64](builtin-F64) val^

---

### _inf

```pony
new val _inf(
  negative: Bool val)
: F64 val^
```
#### Parameters

*   negative: [Bool](builtin-Bool) val

#### Returns

* [F64](builtin-F64) val^

---

### from_bits

```pony
new val from_bits(
  i: U64 val)
: F64 val^
```
#### Parameters

*   i: [U64](builtin-U64) val

#### Returns

* [F64](builtin-F64) val^

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
: F64 val^
```
#### Parameters

*   a: B

#### Returns

* [F64](builtin-F64) val^

---

### min_value

Minimum negative value representable.


```pony
new val min_value()
: F64 val^
```

#### Returns

* [F64](builtin-F64) val^

---

### max_value

Maximum positive value representable.


```pony
new val max_value()
: F64 val^
```

#### Returns

* [F64](builtin-F64) val^

---

### min_normalised

Minimum positive value representable at full precision (ie a normalised
number).


```pony
new val min_normalised()
: F64 val^
```

#### Returns

* [F64](builtin-F64) val^

---

### epsilon

Minimum positive value such that (1 + epsilon) != 1.


```pony
new val epsilon()
: F64 val^
```

#### Returns

* [F64](builtin-F64) val^

---

## Public Functions

### bits

```pony
fun box bits()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### radix

Exponent radix.


```pony
fun tag radix()
: U8 val
```

#### Returns

* [U8](builtin-U8) val

---

### precision2

Mantissa precision in bits.


```pony
fun tag precision2()
: U8 val
```

#### Returns

* [U8](builtin-U8) val

---

### precision10

Mantissa precision in decimal digits.


```pony
fun tag precision10()
: U8 val
```

#### Returns

* [U8](builtin-U8) val

---

### min_exp2

Minimum exponent value such that (2^exponent) - 1 is representable at full
precision (ie a normalised number).


```pony
fun tag min_exp2()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### min_exp10

Minimum exponent value such that (10^exponent) - 1 is representable at full
precision (ie a normalised number).


```pony
fun tag min_exp10()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### max_exp2

Maximum exponent value such that (2^exponent) - 1 is representable.


```pony
fun tag max_exp2()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### max_exp10

Maximum exponent value such that (10^exponent) - 1 is representable.


```pony
fun tag max_exp10()
: I16 val
```

#### Returns

* [I16](builtin-I16) val

---

### abs

```pony
fun box abs()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### ceil

```pony
fun box ceil()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### floor

```pony
fun box floor()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### round

```pony
fun box round()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### trunc

```pony
fun box trunc()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### min

```pony
fun box min(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### max

```pony
fun box max(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### finite

Check whether this number is finite, ie not +/-infinity and not NaN.


```pony
fun box finite()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### infinite

Check whether this number is +/-infinity


```pony
fun box infinite()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### nan

Check whether this number is NaN.


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
  x: F64 val,
  exponent: I32 val)
: F64 val
```
#### Parameters

*   x: [F64](builtin-F64) val
*   exponent: [I32](builtin-I32) val

#### Returns

* [F64](builtin-F64) val

---

### frexp

```pony
fun box frexp()
: (F64 val , U32 val)
```

#### Returns

* ([F64](builtin-F64) val , [U32](builtin-U32) val)

---

### log

```pony
fun box log()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### log2

```pony
fun box log2()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### log10

```pony
fun box log10()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### logb

```pony
fun box logb()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### pow

```pony
fun box pow(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### powi

```pony
fun box powi(
  y: I32 val)
: F64 val
```
#### Parameters

*   y: [I32](builtin-I32) val

#### Returns

* [F64](builtin-F64) val

---

### sqrt

```pony
fun box sqrt()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### sqrt_unsafe

Unsafe operation.
If this is negative, the result is undefined.


```pony
fun box sqrt_unsafe()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### cbrt

```pony
fun box cbrt()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### exp

```pony
fun box exp()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### exp2

```pony
fun box exp2()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### cos

```pony
fun box cos()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### sin

```pony
fun box sin()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### tan

```pony
fun box tan()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### cosh

```pony
fun box cosh()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### sinh

```pony
fun box sinh()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### tanh

```pony
fun box tanh()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### acos

```pony
fun box acos()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### asin

```pony
fun box asin()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### atan

```pony
fun box atan()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### atan2

```pony
fun box atan2(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### acosh

```pony
fun box acosh()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### asinh

```pony
fun box asinh()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### atanh

```pony
fun box atanh()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### copysign

```pony
fun box copysign(
  sign: F64 val)
: F64 val
```
#### Parameters

*   sign: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### hash

```pony
fun box hash()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### i128

```pony
fun box i128()
: I128 val
```

#### Returns

* [I128](builtin-I128) val

---

### u128

```pony
fun box u128()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### i128_unsafe

Unsafe operation.
If the value doesn't fit in the destination type, the result is undefined.


```pony
fun box i128_unsafe()
: I128 val
```

#### Returns

* [I128](builtin-I128) val

---

### u128_unsafe

Unsafe operation.
If the value doesn't fit in the destination type, the result is undefined.


```pony
fun box u128_unsafe()
: U128 val
```

#### Returns

* [U128](builtin-U128) val

---

### add_unsafe

```pony
fun box add_unsafe(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### sub_unsafe

```pony
fun box sub_unsafe(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### mul_unsafe

```pony
fun box mul_unsafe(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### div_unsafe

```pony
fun box div_unsafe(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### divmod_unsafe

```pony
fun box divmod_unsafe(
  y: F64 val)
: (F64 val , F64 val)
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* ([F64](builtin-F64) val , [F64](builtin-F64) val)

---

### mod_unsafe

```pony
fun box mod_unsafe(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### neg_unsafe

```pony
fun box neg_unsafe()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### eq_unsafe

```pony
fun box eq_unsafe(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne_unsafe

```pony
fun box ne_unsafe(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### lt_unsafe

```pony
fun box lt_unsafe(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### le_unsafe

```pony
fun box le_unsafe(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### ge_unsafe

```pony
fun box ge_unsafe(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### gt_unsafe

```pony
fun box gt_unsafe(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

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

### add

```pony
fun box add(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### sub

```pony
fun box sub(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### mul

```pony
fun box mul(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### div

```pony
fun box div(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### divmod

```pony
fun box divmod(
  y: F64 val)
: (F64 val , F64 val)
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* ([F64](builtin-F64) val , [F64](builtin-F64) val)

---

### mod

```pony
fun box mod(
  y: F64 val)
: F64 val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [F64](builtin-F64) val

---

### neg

```pony
fun box neg()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

### eq

```pony
fun box eq(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### lt

```pony
fun box lt(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### le

```pony
fun box le(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### ge

```pony
fun box ge(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

#### Returns

* [Bool](builtin-Bool) val

---

### gt

```pony
fun box gt(
  y: F64 val)
: Bool val
```
#### Parameters

*   y: [F64](builtin-F64) val

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
  that: F64 val)
: (Less val | Equal val | Greater val)
```
#### Parameters

*   that: [F64](builtin-F64) val

#### Returns

* ([Less](builtin-Less) val | [Equal](builtin-Equal) val | [Greater](builtin-Greater) val)

---

## Private Functions

### _value

```pony
fun box _value()
: F64 val
```

#### Returns

* [F64](builtin-F64) val

---

