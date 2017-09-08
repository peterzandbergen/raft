# StdStream

Asynchronous access to stdout and stderr. The constructors are private to
ensure that access is provided only via an environment.


```pony
actor tag StdStream
```

## Constructors

### _out

Create an async stream for stdout.


```pony
new tag _out()
: StdStream tag^
```

#### Returns

* [StdStream](builtin-StdStream) tag^

---

### _err

Create an async stream for stderr.


```pony
new tag _err()
: StdStream tag^
```

#### Returns

* [StdStream](builtin-StdStream) tag^

---

## Public Behaviours

### print

Print some bytes and insert a newline afterwards.


```pony
be print(
  data: (String val | Array[U8 val] val))
```
#### Parameters

*   data: ([String](builtin-String) val | [Array](builtin-Array)\[[U8](builtin-U8) val\] val)

---

### write

Print some bytes without inserting a newline afterwards.


```pony
be write(
  data: (String val | Array[U8 val] val))
```
#### Parameters

*   data: ([String](builtin-String) val | [Array](builtin-Array)\[[U8](builtin-U8) val\] val)

---

### printv

Print an iterable collection of ByteSeqs.


```pony
be printv(
  data: ByteSeqIter val)
```
#### Parameters

*   data: [ByteSeqIter](builtin-ByteSeqIter) val

---

### writev

Write an iterable collection of ByteSeqs.


```pony
be writev(
  data: ByteSeqIter val)
```
#### Parameters

*   data: [ByteSeqIter](builtin-ByteSeqIter) val

---

## Private Functions

### _write

Write the bytes without explicitly flushing.


```pony
fun ref _write(
  data: (String val | Array[U8 val] val))
: None val
```
#### Parameters

*   data: ([String](builtin-String) val | [Array](builtin-Array)\[[U8](builtin-U8) val\] val)

#### Returns

* [None](builtin-None) val

---

### _print

Write the bytes and a newline without explicitly flushing.


```pony
fun ref _print(
  data: (String val | Array[U8 val] val))
: None val
```
#### Parameters

*   data: ([String](builtin-String) val | [Array](builtin-Array)\[[U8](builtin-U8) val\] val)

#### Returns

* [None](builtin-None) val

---

