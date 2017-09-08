# ReadSeq\[A: A\]

The readable interface of a sequence.


```pony
interface box ReadSeq[A: A]
```

## Public Functions

### size

Returns the number of elements in the sequence.


```pony
fun box size()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### apply

Returns the i-th element of the sequence. Raises an error if the index
is out of bounds. Note that this returns A^, not this->A.


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

### values

Returns an iterator over the elements of the sequence. Note that this
iterates over A^, not this->A.


```pony
fun box values()
: Iterator[this->A] ref^
```

#### Returns

* [Iterator](builtin-Iterator)\[this->A\] ref^

---

