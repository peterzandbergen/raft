# HashFunction\[A: A\]

A pluggable hash function.


```pony
interface val HashFunction[A: A]
```

## Constructors

### create

Data structures create instances internally. Use a primitive if possible.


```pony
new val create()
: HashFunction[A] val^
```

#### Returns

* [HashFunction](collections-HashFunction)\[A\] val^

---

## Public Functions

### hash

Calculate the hash of some type. This is an alias of the type parameter to
allow data structures to hash things without consuming them.


```pony
fun box hash(
  x: box->A!)
: U64 val
```
#### Parameters

*   x: box->A!

#### Returns

* [U64](builtin-U64) val

---

### eq

Determine equality between two keys with the same hash. This is done with
viewpoint adapted aliases to allow data structures to determine equality
in a box fun without consuming keys.


```pony
fun box eq(
  x: box->A!,
  y: box->A!)
: Bool val
```
#### Parameters

*   x: box->A!
*   y: box->A!

#### Returns

* [Bool](builtin-Bool) val

---

