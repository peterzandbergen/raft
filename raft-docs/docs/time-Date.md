# Date

Represents a proleptic Gregorian date and time, without specifying a
time zone. The day of month, month, day of week, and day of year are all
indexed from 1, i.e. January is 1, Monday is 1.


```pony
class ref Date
```

## Constructors

### create

```pony
new ref create(
  seconds: I64 val = 0,
  nanoseconds: I64 val = 0)
: Date ref^
```
#### Parameters

*   seconds: [I64](builtin-I64) val = 0
*   nanoseconds: [I64](builtin-I64) val = 0

#### Returns

* [Date](time-Date) ref^

---

## Public fields

* var nsec: [I32](builtin-I32) val

---

* var sec: [I32](builtin-I32) val

---

* var min: [I32](builtin-I32) val

---

* var hour: [I32](builtin-I32) val

---

* var day_of_month: [I32](builtin-I32) val

---

* var month: [I32](builtin-I32) val

---

* var year: [I32](builtin-I32) val

---

* var day_of_week: [I32](builtin-I32) val

---

* var day_of_year: [I32](builtin-I32) val

---

## Public Functions

### time

Return a POSIX time. Treats the date as UTC.


```pony
fun box time()
: I64 val
```

#### Returns

* [I64](builtin-I64) val

---

### normal

Normalise all the fields of the date. For example, if the hour is 24, it is
set to 0 and the day is advanced. This allows fields to be changed naively,
eg. adding 1000 to hours to advance the time by 1000 hours, and then
normalising the date.


```pony
fun ref normal()
: None val
```

#### Returns

* [None](builtin-None) val

---

### format

Format the time as for strftime.


```pony
fun box format(
  fmt: String val)
: String val
```
#### Parameters

*   fmt: [String](builtin-String) val

#### Returns

* [String](builtin-String) val

---

