# ByteSeqIter

Accept an iterable collection of String or Array[U8] val.


```pony
interface val ByteSeqIter
```

## Public Functions

### values

```pony
fun box values()
: Iterator[(this->String box | this->Array[U8 val] box)] ref
```

#### Returns

* [Iterator](builtin-Iterator)\[(this->[String](builtin-String) box | this->[Array](builtin-Array)\[[U8](builtin-U8) val\] box)\] ref

---

