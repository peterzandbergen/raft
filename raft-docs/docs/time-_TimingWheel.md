# _TimingWheel

A timing wheel in a hierarchical set of timing wheels. Each wheel covers 6
bits of precision.


```pony
class ref _TimingWheel
```

## Constructors

### create

```pony
new ref create(
  index: USize val)
: _TimingWheel ref^
```
#### Parameters

*   index: [USize](builtin-USize) val

#### Returns

* [_TimingWheel](time-_TimingWheel) ref^

---

## Public Functions

### schedule

Schedule a timer on this wheel. Mark the bit indicating that the given slot
has timers in its list.


```pony
fun ref schedule(
  timer: Timer ref)
: None val
```
#### Parameters

*   timer: [Timer](time-Timer) ref

#### Returns

* [None](builtin-None) val

---

### advance

Remove pending timers from this timing wheel and put them on the pending
list supplied. Needs the current time and the elapsed time since the
previous advance. Returns true if the next timing wheel in the hierarchy
should be advanced.


```pony
fun ref advance(
  list: List[Timer ref] ref,
  current: U64 val,
  elapsed: U64 val)
: Bool val
```
#### Parameters

*   list: [List](collections-List)\[[Timer](time-Timer) ref\] ref
*   current: [U64](builtin-U64) val
*   elapsed: [U64](builtin-U64) val

#### Returns

* [Bool](builtin-Bool) val

---

### next

Given a current time, return the next time at which this timing wheel
should be advanced. Returns -1 if no timers are on this timing wheel.


```pony
fun box next(
  current: U64 val)
: U64 val
```
#### Parameters

*   current: [U64](builtin-U64) val

#### Returns

* [U64](builtin-U64) val

---

### clear

Cancels all pending timers.


```pony
fun ref clear()
: None val
```

#### Returns

* [None](builtin-None) val

---

## Private Functions

### _slot

Return the slot for a given time.


```pony
fun box _slot(
  time: U64 val)
: U64 val
```
#### Parameters

*   time: [U64](builtin-U64) val

#### Returns

* [U64](builtin-U64) val

---

### _bits

```pony
fun tag _bits()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### _max

```pony
fun tag _max()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### _mask

```pony
fun tag _mask()
: U64 val
```

#### Returns

* [U64](builtin-U64) val

---

