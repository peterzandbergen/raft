# Stdin

Asynchronous access to stdin. The constructor is private to ensure that
access is provided only via an environment.


```pony
actor tag Stdin
```

## Constructors

### _create

```pony
new tag _create(
  use_event: Bool val)
: Stdin tag^
```
#### Parameters

*   use_event: [Bool](builtin-Bool) val

#### Returns

* [Stdin](builtin-Stdin) tag^

---

## Public Behaviours

### apply

Set the notifier. Optionally, also sets the chunk size, dictating the
maximum number of bytes of each chunk that will be passed to the notifier.


```pony
be apply(
  notify: (StdinNotify iso | None val),
  chunk_size: USize val = 32)
```
#### Parameters

*   notify: ([StdinNotify](builtin-StdinNotify) iso | [None](builtin-None) val)
*   chunk_size: [USize](builtin-USize) val = 32

---

### dispose

Clear the notifier in order to shut down input.


```pony
be dispose()
```

---

## Private Behaviours

### _loop_read

If we are able to read from stdin, schedule another read.


```pony
be _loop_read()
```

---

### _event_notify

When the event fires, read from stdin.


```pony
be _event_notify(
  event: Pointer[AsioEvent val] tag,
  flags: U32 val,
  arg: U32 val)
```
#### Parameters

*   event: [Pointer](builtin-Pointer)\[[AsioEvent](builtin-AsioEvent) val\] tag
*   flags: [U32](builtin-U32) val
*   arg: [U32](builtin-U32) val

---

### _read_again

Resume reading.


```pony
be _read_again()
```

---

## Private Functions

### _set_notify

Set the notifier.


```pony
fun ref _set_notify(
  notify: (StdinNotify iso | None val))
: None val
```
#### Parameters

*   notify: ([StdinNotify](builtin-StdinNotify) iso | [None](builtin-None) val)

#### Returns

* [None](builtin-None) val

---

### _read

Read a chunk of data from stdin. Read a maximum of _chunk_size bytes, send
ourself a resume message and stop reading to avoid starving other actors.


```pony
fun ref _read()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### _close_event

Close the event.


```pony
fun ref _close_event()
: None val
```

#### Returns

* [None](builtin-None) val

---

