# Nanos

Collection of utility functions for converting various durations of time
to nanoseconds, for passing to other functions in the time package.


```pony
primitive val Nanos
```

## Constructors

### create

```pony
new val create()
: Nanos val^
```

#### Returns

* [Nanos](time-Nanos) val^

---

## Public Functions

### from_seconds

```pony
fun box from_seconds(
  t: U64 val)
: U64 val
```
#### Parameters

*   t: [U64](builtin-U64) val

#### Returns

* [U64](builtin-U64) val

---

### from_millis

```pony
fun box from_millis(
  t: U64 val)
: U64 val
```
#### Parameters

*   t: [U64](builtin-U64) val

#### Returns

* [U64](builtin-U64) val

---

### from_micros

```pony
fun box from_micros(
  t: U64 val)
: U64 val
```
#### Parameters

*   t: [U64](builtin-U64) val

#### Returns

* [U64](builtin-U64) val

---

### from_seconds_f

```pony
fun box from_seconds_f(
  t: F64 val)
: U64 val
```
#### Parameters

*   t: [F64](builtin-F64) val

#### Returns

* [U64](builtin-U64) val

---

### from_millis_f

```pony
fun box from_millis_f(
  t: F64 val)
: U64 val
```
#### Parameters

*   t: [F64](builtin-F64) val

#### Returns

* [U64](builtin-U64) val

---

### from_micros_f

```pony
fun box from_micros_f(
  t: F64 val)
: U64 val
```
#### Parameters

*   t: [F64](builtin-F64) val

#### Returns

* [U64](builtin-U64) val

---

### from_wall_clock

```pony
fun box from_wall_clock(
  wall: (I64 val , I64 val))
: U64 val
```
#### Parameters

*   wall: ([I64](builtin-I64) val , [I64](builtin-I64) val)

#### Returns

* [U64](builtin-U64) val

---

### eq

```pony
fun box eq(
  that: Nanos val)
: Bool val
```
#### Parameters

*   that: [Nanos](time-Nanos) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: Nanos val)
: Bool val
```
#### Parameters

*   that: [Nanos](time-Nanos) val

#### Returns

* [Bool](builtin-Bool) val

---

