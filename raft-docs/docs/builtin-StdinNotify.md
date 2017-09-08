# StdinNotify

Notification for data arriving via stdin.


```pony
interface ref StdinNotify
```

## Public Functions

### apply

Called when data is available on stdin.


```pony
fun ref apply(
  data: Array[U8 val] iso)
: None val
```
#### Parameters

*   data: [Array](builtin-Array)\[[U8](builtin-U8) val\] iso

#### Returns

* [None](builtin-None) val

---

### dispose

Called when no more data will arrive on stdin.


```pony
fun ref dispose()
: None val
```

#### Returns

* [None](builtin-None) val

---

