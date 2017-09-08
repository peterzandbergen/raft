# Time

A collection of ways to fetch the current time.


```pony
primitive val Time
```

## Constructors

### create

```pony
new val create()
: Time val^
```

#### Returns

* [Time](time-Time) val^

---

## Public Functions

### now

The wall-clock adjusted system time with nanoseconds.
Return: (seconds, nanoseconds)


```pony
fun box now()
: (I64 val , I64 val)
```

#### Returns

* ([I64](builtin-I64) val , [I64](builtin-I64) val)

---

### seconds

The wall-clock adjusted system time.


```pony
fun box seconds()
: I64 val
```

#### Returns

* [I64](builtin-I64) val

---

### millis

Monotonic unadjusted milliseconds.


```pony
fun box millis()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### micros

Monotonic unadjusted microseconds.


```pony
fun box micros()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### nanos

Monotonic unadjusted nanoseconds.


```pony
fun box nanos()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### cycles

Processor cycle count. Don't use this for performance timing, as it does
not control for out-of-order execution.


```pony
fun box cycles()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### perf_begin

Get a cycle count for beginning a performance testing block. This will
will prevent instructions from before this call leaking into the block and
instructions after this call being executed earlier.


```pony
fun box perf_begin()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### perf_end

Get a cycle count for ending a performance testing block. This will
will prevent instructions from after this call leaking into the block and
instructions before this call being executed later.


```pony
fun box perf_end()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### eq

```pony
fun box eq(
  that: Time val)
: Bool val
```
#### Parameters

*   that: [Time](time-Time) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: Time val)
: Bool val
```
#### Parameters

*   that: [Time](time-Time) val

#### Returns

* [Bool](builtin-Bool) val

---

## Private Functions

### _clock_gettime

Return a clock time on linux and bsd.


```pony
fun box _clock_gettime(
  clock: (_ClockRealtime val | _ClockMonotonic val))
: (I64 val , I64 val)
```
#### Parameters

*   clock: ([_ClockRealtime](time-_ClockRealtime) val | [_ClockMonotonic](time-_ClockMonotonic) val)

#### Returns

* ([I64](builtin-I64) val , [I64](builtin-I64) val)

---

### _query_performance_counter

Return QPC and QPF.


```pony
fun box _query_performance_counter()
: (U64 val , U64 val)
```

#### Returns

* ([U64](builtin-U64) val , [U64](builtin-U64) val)

---

