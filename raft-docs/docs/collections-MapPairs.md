# MapPairs\[K: K, V: V, H: [HashFunction](collections-HashFunction)\[K\] val, M: [HashMap](collections-HashMap)\[K, V, H\] #read\]

An iterator over the keys and values in a map.


```pony
class ref MapPairs[K: K, V: V, H: HashFunction[K] val, M: HashMap[K, V, H] #read] is
  Iterator[(M->K , M->V)] ref
```

#### Implements

* [Iterator](builtin-Iterator)\[(M->K , M->V)\] ref

---

## Constructors

### create

```pony
new ref create(
  map: M)
: MapPairs[K, V, H, M] ref^
```
#### Parameters

*   map: M

#### Returns

* [MapPairs](collections-MapPairs)\[K, V, H, M\] ref^

---

## Public Functions

### has_next

True if it believes there are remaining entries. May not be right if values
were added or removed from the map.


```pony
fun box has_next()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### next

Returns the next entry, or raises an error if there isn't one. If entries
are added during iteration, this may not return all entries.


```pony
fun ref next()
: (M->K , M->V) ?
```

#### Returns

* (M->K , M->V) ?

---

