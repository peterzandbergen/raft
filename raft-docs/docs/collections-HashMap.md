# HashMap\[K: K, V: V, H: [HashFunction](collections-HashFunction)\[K\] val\]

A quadratic probing hash map. Resize occurs at a load factor of 0.75. A
resized map has 2 times the space. The hash function can be plugged in to the
type to create different kinds of maps.


```pony
class ref HashMap[K: K, V: V, H: HashFunction[K] val]
```

## Constructors

### create

```pony
new ref create(
  prealloc: USize val = 6)
: HashMap[K, V, H] ref^
```
#### Parameters

*   prealloc: [USize](builtin-USize) val = 6

#### Returns

* [HashMap](collections-HashMap)\[K, V, H\] ref^

---

## Public Functions

### size

The number of items in the map.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### space

The available space in the map. Resize will happen when
size / space >= 0.75.


```pony
fun box space()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### apply

Gets a value from the map. Raises an error if no such item exists.


```pony
fun box apply(
  key: box->K!)
: this->V ?
```
#### Parameters

*   key: box->K!

#### Returns

* this->V ?

---

### update

Sets a value in the map. Returns the old value if there was one, otherwise
returns None. If there was no previous value, this may trigger a resize.


```pony
fun ref update(
  key: K,
  value: V)
: (V^ | None val)
```
#### Parameters

*   key: K
*   value: V

#### Returns

* (V^ | [None](builtin-None) val)

---

### upsert

Combines a provided value with the current value for the provided key
using the provided function. If the provided key has not been added to
the map yet, it sets its value to the provided value.

As a simple example, say we had a map with I64 values and we wanted to
add 4 to the current value for key "test", which let's say is currently 2.
We call

m.upsert("test", 4, {(x, y) => x - y })

This changes the value associated with "test" to -2.

If we have not yet added the key "new-key" to the map and we call

m.upsert("new-key", 4, {(x, y) => x - y })

then "new-key" is added to the map with a value of -4.

Returns the value that we set the key to


```pony
fun ref upsert(
  key: K,
  value: V,
  f: {(V, V): V^}[K, V, H] box)
: V ?
```
#### Parameters

*   key: K
*   value: V
*   f: {(V, V): V^}[K, V, H] box

#### Returns

* V ?

---

### insert

Set a value in the map. Returns the new value, allowing reuse.


```pony
fun ref insert(
  key: K,
  value: V)
: V ?
```
#### Parameters

*   key: K
*   value: V

#### Returns

* V ?

---

### insert_if_absent

Set a value in the map if the key doesn't already exist in the Map.
Saves an extra lookup when doing a pattern like:

```pony
if not my_map.contains(my_key) then
  my_map(my_key) = my_value
end
```

Returns the value, the same as `insert`, allowing 'insert_if_absent'
to be used as a drop-in replacement for `insert`.


```pony
fun ref insert_if_absent(
  key: K,
  value: V)
: V ?
```
#### Parameters

*   key: K
*   value: V

#### Returns

* V ?

---

### remove

Delete a value from the map and return it. Raises an error if there was no
value for the given key.


```pony
fun ref remove(
  key: box->K!)
: (K^ , V^) ?
```
#### Parameters

*   key: box->K!

#### Returns

* (K^ , V^) ?

---

### get_or_else

Get the value associated with provided key if present. Otherwise,
return the provided alternate value.


```pony
fun box get_or_else(
  key: box->K!,
  alt: this->V)
: this->V
```
#### Parameters

*   key: box->K!
*   alt: this->V

#### Returns

* this->V

---

### contains

Checks whether the map contains the key k


```pony
fun box contains(
  k: box->K!)
: Bool val
```
#### Parameters

*   k: box->K!

#### Returns

* [Bool](builtin-Bool) val

---

### concat

Add K, V pairs from the iterator to the map.


```pony
fun ref concat(
  iter: Iterator[(K^ , V^)] ref)
: None val
```
#### Parameters

*   iter: [Iterator](builtin-Iterator)\[(K^ , V^)\] ref

#### Returns

* [None](builtin-None) val

---

### add\[optional H2: [HashFunction](collections-HashFunction)\[this->K!\] val\]

This with the new (key, value) mapping.


```pony
fun box add[optional H2: HashFunction[this->K!] val](
  key: this->K!,
  value: this->V!)
: HashMap[this->K!, this->V!, H2] ref^
```
#### Parameters

*   key: this->K!
*   value: this->V!

#### Returns

* [HashMap](collections-HashMap)\[this->K!, this->V!, H2\] ref^

---

### sub\[optional H2: [HashFunction](collections-HashFunction)\[this->K!\] val\]

This without the given key.


```pony
fun box sub[optional H2: HashFunction[this->K!] val](
  key: this->K!,
  value: this->V!)
: HashMap[this->K!, this->V!, H2] ref^
```
#### Parameters

*   key: this->K!
*   value: this->V!

#### Returns

* [HashMap](collections-HashMap)\[this->K!, this->V!, H2\] ref^

---

### next_index

Given an index, return the next index that has a populated key and value.
Raise an error if there is no next populated index.


```pony
fun box next_index(
  prev: USize val = call)
: USize val ?
```
#### Parameters

*   prev: [USize](builtin-USize) val = call

#### Returns

* [USize](builtin-USize) val ?

---

### index

Returns the key and value at a given index.
Raise an error if the index is not populated.


```pony
fun box index(
  i: USize val)
: (this->K , this->V) ?
```
#### Parameters

*   i: [USize](builtin-USize) val

#### Returns

* (this->K , this->V) ?

---

### compact

Minimise the memory used for the map.


```pony
fun ref compact()
: None val
```

#### Returns

* [None](builtin-None) val

---

### clone\[optional H2: [HashFunction](collections-HashFunction)\[this->K!\] val\]

Create a clone. The key and value types may be different due to aliasing
and viewpoint adaptation.


```pony
fun box clone[optional H2: HashFunction[this->K!] val]()
: HashMap[this->K!, this->V!, H2] ref^
```

#### Returns

* [HashMap](collections-HashMap)\[this->K!, this->V!, H2\] ref^

---

### clear

Remove all entries.


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None) val

---

### keys

Return an iterator over the keys.


```pony
fun box keys()
: MapKeys[K, V, H, this->HashMap[K, V, H] ref] ref^
```

#### Returns

* [MapKeys](collections-MapKeys)\[K, V, H, this->[HashMap](collections-HashMap)\[K, V, H\] ref\] ref^

---

### values

Return an iterator over the values.


```pony
fun box values()
: MapValues[K, V, H, this->HashMap[K, V, H] ref] ref^
```

#### Returns

* [MapValues](collections-MapValues)\[K, V, H, this->[HashMap](collections-HashMap)\[K, V, H\] ref\] ref^

---

### pairs

Return an iterator over the keys and values.


```pony
fun box pairs()
: MapPairs[K, V, H, this->HashMap[K, V, H] ref] ref^
```

#### Returns

* [MapPairs](collections-MapPairs)\[K, V, H, this->[HashMap](collections-HashMap)\[K, V, H\] ref\] ref^

---

## Private Functions

### _search

Return a slot number and whether or not it's currently occupied.


```pony
fun box _search(
  key: box->K!)
: (USize val , Bool val)
```
#### Parameters

*   key: box->K!

#### Returns

* ([USize](builtin-USize) val , [Bool](builtin-Bool) val)

---

### _resize

Change the available space.


```pony
fun ref _resize(
  len: USize val)
: None val
```
#### Parameters

*   len: [USize](builtin-USize) val

#### Returns

* [None](builtin-None) val

---

