# Timers

A hierarchical set of timing wheels.


```pony
actor tag Timers
```

## Constructors

### create

```pony
new tag create(
  slop: USize val = 20)
: Timers tag^
```
#### Parameters

*   slop: [USize](builtin-USize) val = 20

#### Returns

* [Timers](time-Timers) tag^

---

## Public Behaviours

### apply

Sets a timer. Fire it if need be, schedule it on the right timing wheel,
then rearm the timer.


```pony
be apply(
  timer: Timer iso)
```
#### Parameters

*   timer: [Timer](time-Timer) iso

---

### cancel

Cancels a timer.


```pony
be cancel(
  timer: Timer tag)
```
#### Parameters

*   timer: [Timer](time-Timer) tag

---

### dispose

Dipose of this set of timing wheels.


```pony
be dispose()
```

---

## Private Behaviours

### _event_notify

When the event fires, advance the timing wheels.


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

## Private Functions

### _advance

Update the current time, process all the timing wheels, and set the event
for the next time we need to advance.


```pony
fun ref _advance()
: None val
```

#### Returns

* [None](builtin-None) val

---

### _fire

Fire a timer if necessary, then schedule it on the correct timing wheel
based on how long it is until it expires.


```pony
fun ref _fire(
  timer: Timer ref)
: None val
```
#### Parameters

*   timer: [Timer](time-Timer) ref

#### Returns

* [None](builtin-None) val

---

### _next

Return the next time at which the timing wheels should be advanced. This is
adjusted for slop, so it yields nanoseconds. If no events are pending, this
returns -1.


```pony
fun box _next()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### _set_time

Set the current time with precision reduced by the slop bits. Return the
elapsed time.


```pony
fun ref _set_time()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### _get_wheel

Get the hierarchical timing wheel for the given time until expiration.


```pony
fun ref _get_wheel(
  rem: U64 val)
: _TimingWheel ref ?
```
#### Parameters

*   rem: [U64](builtin-U64) val

#### Returns

* [_TimingWheel](time-_TimingWheel) ref ?

---

### _expiration_max

Get the maximum time the timing wheels cover. Anything beyond this is
scheduled on the last timing wheel.


```pony
fun tag _expiration_max()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

### _wheels

```pony
fun tag _wheels()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### _bits

```pony
fun tag _bits()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

