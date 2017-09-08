# _UTF32Encoder

```pony
primitive val _UTF32Encoder
```

## Constructors

### create

```pony
new val create()
: _UTF32Encoder val^
```

#### Returns

* [_UTF32Encoder](builtin-_UTF32Encoder) val^

---

## Public Functions

### encode

Encode the code point into UTF-8. It returns a tuple with the size of the
encoded data and then the data.


```pony
fun box encode(
  value: U32 val)
: (USize val , U8 val , U8 val , U8 val , U8 val)
```
#### Parameters

*   value: [U32](builtin-U32) val

#### Returns

* ([USize](builtin-USize) val , [U8](builtin-U8) val , [U8](builtin-U8) val , [U8](builtin-U8) val , [U8](builtin-U8) val)

---

### eq

```pony
fun box eq(
  that: _UTF32Encoder val)
: Bool val
```
#### Parameters

*   that: [_UTF32Encoder](builtin-_UTF32Encoder) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: _UTF32Encoder val)
: Bool val
```
#### Parameters

*   that: [_UTF32Encoder](builtin-_UTF32Encoder) val

#### Returns

* [Bool](builtin-Bool) val

---

