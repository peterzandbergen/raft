# HashEq\[A: ([Hashable](collections-Hashable) #read & [Equatable](builtin-Equatable)\[A\] #read)\]

```pony
primitive val HashEq[A: (Hashable #read & Equatable[A] #read)] is
  HashFunction[A] val
```

#### Implements

* [HashFunction](collections-HashFunction)\[A\] val

---

## Constructors

### create

```pony
new val create()
: HashEq[A] val^
```

#### Returns

* [HashEq](collections-HashEq)\[A\] val^

---

## Public Functions

### hash

Use the hash function from the type parameter.


```pony
fun box hash(
  x: box->A)
: U64 val
```
#### Parameters

*   x: box->A

#### Returns

* [U64](builtin-U64) val

---

### eq

Use the structural equality function from the type parameter.


```pony
fun box eq(
  x: box->A,
  y: box->A)
: Bool val
```
#### Parameters

*   x: box->A
*   y: box->A

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: HashEq[A] val)
: Bool val
```
#### Parameters

*   that: [HashEq](collections-HashEq)\[A\] val

#### Returns

* [Bool](builtin-Bool) val

---

