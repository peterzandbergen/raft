# HashIs\[A: A\]

```pony
primitive val HashIs[A: A] is
  HashFunction[A] val
```

#### Implements

* [HashFunction](collections-HashFunction)\[A\] val

---

## Constructors

### create

```pony
new val create()
: HashIs[A] val^
```

#### Returns

* [HashIs](collections-HashIs)\[A\] val^

---

## Public Functions

### hash

Hash the identity rather than the contents.


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

Determine equality by identity rather than structurally.


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

### ne

```pony
fun box ne(
  that: HashIs[A] val)
: Bool val
```
#### Parameters

*   that: [HashIs](collections-HashIs)\[A\] val

#### Returns

* [Bool](builtin-Bool) val

---

