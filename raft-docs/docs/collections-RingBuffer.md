# RingBuffer\[A: A\]

A ring buffer.


```pony
class ref RingBuffer[A: A]
```

## Constructors

### create

```pony
new ref create(
  len: USize val)
: RingBuffer[A] ref^
```
#### Parameters

*   len: [USize](builtin-USize) val

#### Returns

* [RingBuffer](collections-RingBuffer)\[A\] ref^

---

## Public Functions

### head

The first read that will succeed. If nothing has been written to the ring,
this will raise an error.


```pony
fun box head()
: USize val ?
```

#### Returns

* [USize](builtin-USize) val ?

---

### size

The number of elements that have been added to the ring.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### space

The available space in the ring.


```pony
fun box space()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### apply

Get the i-th element from the ring. If the i-th element has not yet been
added or is no longer available, this will raise an error.


```pony
fun box apply(
  i: USize val)
: this->A ?
```
#### Parameters

*   i: [USize](builtin-USize) val

#### Returns

* this->A ?

---

### push

Add an element to the ring. If the ring is full, this will drop the oldest
element in the ring. Returns true if an element was dropped.


```pony
fun ref push(
  value: A)
: Bool val
```
#### Parameters

*   value: A

#### Returns

* [Bool](builtin-Bool) val

---

### clear

Clear the queue.


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None) val

---

