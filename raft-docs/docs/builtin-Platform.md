# Platform

```pony
primitive val Platform
```

## Constructors

### create

```pony
new val create()
: Platform val^
```

#### Returns

* [Platform](builtin-Platform) val^

---

## Public Functions

### bsd

```pony
fun box bsd()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### freebsd

```pony
fun box freebsd()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### dragonfly

```pony
fun box dragonfly()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### linux

```pony
fun box linux()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### osx

```pony
fun box osx()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### posix

```pony
fun box posix()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### windows

```pony
fun box windows()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### x86

```pony
fun box x86()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### arm

```pony
fun box arm()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### lp64

```pony
fun box lp64()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### llp64

```pony
fun box llp64()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### ilp32

```pony
fun box ilp32()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### native128

```pony
fun box native128()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### debug

```pony
fun box debug()
: Bool val
```

#### Returns

* [Bool](builtin-Bool) val

---

### eq

```pony
fun box eq(
  that: Platform val)
: Bool val
```
#### Parameters

*   that: [Platform](builtin-Platform) val

#### Returns

* [Bool](builtin-Bool) val

---

### ne

```pony
fun box ne(
  that: Platform val)
: Bool val
```
#### Parameters

*   that: [Platform](builtin-Platform) val

#### Returns

* [Bool](builtin-Bool) val

---

