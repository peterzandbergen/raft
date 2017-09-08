# ArrayValues\[A: A, B: [Array](builtin-Array)\[A\] #read\]

```pony
class ref ArrayValues[A: A, B: Array[A] #read] is
  Iterator[B->A] ref
```

#### Implements

* [Iterator](builtin-Iterator)\[B->A\] ref

---

## Constructors

### create

```pony
new ref create(
  array: B)
: ArrayValues[A, B] ref^
```
#### Parameters

*   array: B

#### Returns

* [ArrayValues](builtin-ArrayValues)\[A, B\] ref^

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
: B->A ?
```

#### Returns

* B->A ?

---

### rewind

```pony
fun ref rewind()
: ArrayValues[A, B] ref
```

#### Returns

* [ArrayValues](builtin-ArrayValues)\[A, B\] ref

---

