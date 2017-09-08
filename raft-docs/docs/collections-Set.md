# Set\[A: ([Hashable](collections-Hashable) #read & [Equatable](builtin-Equatable)\[A\] #read)\]

```pony
type Set[A: (Hashable #read & Equatable[A] #read)] is
  HashSet[A, HashEq[A] val] ref
```

#### Type Alias For

* [HashSet](collections-HashSet)\[A, [HashEq](collections-HashEq)\[A\] val\] ref

---

