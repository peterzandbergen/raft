# TimerNotify

Notifications for timer.


```pony
interface ref TimerNotify
```

## Public Functions

### apply

Called with the the number of times the timer has fired since this was last
called. Return true to reschedule the timer (if it has an interval), or
false to cancel the timer (even if it has an interval).


```pony
fun ref apply(
  timer: Timer ref,
  count: U64 val)
: Bool val
```
#### Parameters

*   timer: [Timer](time-Timer) ref
*   count: [U64](builtin-U64) val

#### Returns

* [Bool](builtin-Bool) val

---

### cancel

Called if the timer is cancelled. This is also called if the notifier
returns false.


```pony
fun ref cancel(
  timer: Timer ref)
: None val
```
#### Parameters

*   timer: [Timer](time-Timer) ref

#### Returns

* [None](builtin-None) val

---

