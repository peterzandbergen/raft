# AsioEvent

Functions for asynchronous event notification.


```pony
primitive val AsioEvent
```

## Constructors

### create

```pony
new val create()
: AsioEvent val^
```

#### Returns

* [AsioEvent](builtin-AsioEvent) val^

---

## Public Functions

### none

An empty event.


```pony
fun box none()
: Pointer[AsioEvent val] tag
```

#### Returns

* [Pointer](builtin-Pointer)\[[AsioEvent](builtin-AsioEvent) val\] tag

---

### readable

Returns true if the flags contain the readable flag.


```pony
fun box readable(
  flags: U32 val)
: Bool val
```
#### Parameters

*   flags: [U32](builtin-U32) val

#### Returns

* [Bool](builtin-Bool) val

---

### writeable

Returns true if the flags contain the writeable flag.


```pony
fun box writeable(
  flags: U32 val)
: Bool val
```
#### Parameters

*   flags: [U32](builtin-U32) val

#### Returns

* [Bool](builtin-Bool) val

---

### disposable

Returns true if the event should be disposed of.


```pony
fun box disposable(
  flags: U32 val)
: Bool val
```
#### Parameters

*   flags: [U32](builtin-U32) val

#### Returns

* [Bool](builtin-Bool) val

---

### dispose

```pony
fun box dispose()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### read

```pony
fun box read()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### write

```pony
fun box write()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### timer

```pony
fun box timer()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### signal

```pony
fun box signal()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### read_write

```pony
fun box read_write()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### oneshot

```pony
fun box oneshot()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### read_write_oneshot

```pony
fun box read_write_oneshot()
: U32 val
```

#### Returns

* [U32](builtin-U32) val

---

### eq

```pony
fun box eq(
  that: AsioEvent val)
: Bool val
```
#### Parameters

*   that: [AsioEvent](builtin-AsioEvent) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: AsioEvent val)
: Bool val
```
#### Parameters

*   that: [AsioEvent](builtin-AsioEvent) val

#### Returns

* [Bool](builtin-Bool) val

---

