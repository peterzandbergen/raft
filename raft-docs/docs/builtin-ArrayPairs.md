# ArrayPairs\[A: A, B: [Array](builtin-Array)\[A\] #read\]

```pony
class ref ArrayPairs[A: A, B: Array[A] #read] is
  Iterator[(USize val , B->A)] ref
```

#### Implements

* [Iterator](builtin-Iterator)\[([USize](builtin-USize) val , B->A)\] ref

---

## Constructors

### create

```pony
new ref create(
  array: B)
: ArrayPairs[A, B] ref^
```
#### Parameters

*   array: B

#### Returns

* [ArrayPairs](builtin-ArrayPairs)\[A, B\] ref^

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
: (USize val , B->A) ?
```

#### Returns

* ([USize](builtin-USize) val , B->A) ?

---

