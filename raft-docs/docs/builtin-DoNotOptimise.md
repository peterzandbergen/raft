# DoNotOptimise

Contains functions preventing some compiler optimisations, namely dead code
removal. This is useful for benchmarking purposes.


```pony
primitive val DoNotOptimise
```

## Constructors

### create

```pony
new val create()
: DoNotOptimise val^
```

#### Returns

* [DoNotOptimise](builtin-DoNotOptimise) val^

---

## Public Functions

### apply\[A: A\]

Prevent the compiler from optimising out obj and any computation it is
derived from. This doesn't prevent constant propagation.


```pony
fun box apply[A: A](
  obj: A)
: None val
```
#### Parameters

*   obj: A

#### Returns

* [None](builtin-None) val

---

### observe

Prevent the compiler from optimising out writes to an object marked by
the apply function.


```pony
fun box observe()
: None val
```

#### Returns

* [None](builtin-None) val

---

### eq

```pony
fun box eq(
  that: DoNotOptimise val)
: Bool val
```
#### Parameters

*   that: [DoNotOptimise](builtin-DoNotOptimise) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: DoNotOptimise val)
: Bool val
```
#### Parameters

*   that: [DoNotOptimise](builtin-DoNotOptimise) val

#### Returns

* [Bool](builtin-Bool) val

---

