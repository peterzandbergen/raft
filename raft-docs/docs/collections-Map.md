# Map\[K: ([Hashable](collections-Hashable) #read & [Equatable](builtin-Equatable)\[K\] #read), V: V\]

This is a map that uses structural equality on the key.


```pony
type Map[K: (Hashable #read & Equatable[K] #read), V: V] is
  HashMap[K, V, HashEq[K] val] ref
```

#### Type Alias For

* [HashMap](collections-HashMap)\[K, V, [HashEq](collections-HashEq)\[K\] val\] ref

---

