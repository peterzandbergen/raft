# SourceLoc

Represents a location in a Pony source file, as reported by `__loc`.


```pony
interface val SourceLoc
```

## Public Functions

### file

Name and path of source file.


```pony
fun box file()
: String val
```

#### Returns

* [String](builtin-String) val

---

### method

Name of containing method.


```pony
fun box method()
: String val
```

#### Returns

* [String](builtin-String) val

---

### line

Line number within file.
Line numbers start at 1.


```pony
fun box line()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

### pos

Character position on line.
Character positions start at 1.


```pony
fun box pos()
: USize val
```

#### Returns

* [USize](builtin-USize) val

---

