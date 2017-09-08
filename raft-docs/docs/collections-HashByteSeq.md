# HashByteSeq

Hash and equality functions for arbitrary ByteSeq.


```pony
primitive val HashByteSeq
```

## Constructors

### create

```pony
new val create()
: HashByteSeq val^
```

#### Returns

* [HashByteSeq](collections-HashByteSeq) val^

---

## Public Functions

### hash

```pony
fun box hash(
  x: (String box | Array[U8 val] box))
: U64 val
```
#### Parameters

*   x: ([String](builtin-String) box | [Array](builtin-Array)\[[U8](builtin-U8) val\] box)

#### Returns

* [U64](builtin-U64) val

---

### eq

```pony
fun box eq(
  x: (String box | Array[U8 val] box),
  y: (String box | Array[U8 val] box))
: Bool val
```
#### Parameters

*   x: ([String](builtin-String) box | [Array](builtin-Array)\[[U8](builtin-U8) val\] box)
*   y: ([String](builtin-String) box | [Array](builtin-Array)\[[U8](builtin-U8) val\] box)

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: HashByteSeq val)
: Bool val
```
#### Parameters

*   that: [HashByteSeq](collections-HashByteSeq) val

#### Returns

* [Bool](builtin-Bool) val

---

