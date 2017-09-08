# MapIs\[K: K, V: V\]

This is a map that uses identity comparison on the key.


```pony
type MapIs[K: K, V: V] is
  HashMap[K, V, HashIs[K] val] ref
```

#### Type Alias For

* [HashMap](collections-HashMap)\[K, V, [HashIs](collections-HashIs)\[K\] val\] ref

---

