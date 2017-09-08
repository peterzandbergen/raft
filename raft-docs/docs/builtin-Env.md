# Env

An environment holds the command line and other values injected into the
program by default by the runtime.


```pony
class val Env
```

## Constructors

### _create

Builds an environment from the command line. This is done before the Main
actor is created.


```pony
new ref _create(
  argc: U32 val,
  argv: Pointer[Pointer[U8 val] ref] val,
  envp: Pointer[Pointer[U8 val] ref] val)
: Env ref^
```
#### Parameters

*   argc: [U32](builtin-U32) val
*   argv: [Pointer](builtin-Pointer)\[[Pointer](builtin-Pointer)\[[U8](builtin-U8) val\] ref\] val
*   envp: [Pointer](builtin-Pointer)\[[Pointer](builtin-Pointer)\[[U8](builtin-U8) val\] ref\] val

#### Returns

* [Env](builtin-Env) ref^

---

### create

Build an artificial environment. A root capability may be supplied.


```pony
new ref create(
  root': (AmbientAuth val | None val),
  input': Stdin tag,
  out': StdStream tag,
  err': StdStream tag,
  args': Array[String val] val,
  vars': (Array[String val] val | None val))
: Env ref^
```
#### Parameters

*   root': ([AmbientAuth](builtin-AmbientAuth) val | [None](builtin-None) val)
*   input': [Stdin](builtin-Stdin) tag
*   out': [StdStream](builtin-StdStream) tag
*   err': [StdStream](builtin-StdStream) tag
*   args': [Array](builtin-Array)\[[String](builtin-String) val\] val
*   vars': ([Array](builtin-Array)\[[String](builtin-String) val\] val | [None](builtin-None) val)

#### Returns

* [Env](builtin-Env) ref^

---

## Public fields

* let root: ([AmbientAuth](builtin-AmbientAuth) val | [None](builtin-None) val)

---

* let input: [Stdin](builtin-Stdin) tag

---

* let out: [StdStream](builtin-StdStream) tag

---

* let err: [StdStream](builtin-StdStream) tag

---

* let args: [Array](builtin-Array)\[[String](builtin-String) val\] val

---

## Public Functions

### vars

Return the environment variables as an array of strings of the form
"key=value".


```pony
fun box vars()
: Array[String val] val
```

#### Returns

* [Array](builtin-Array)\[[String](builtin-String) val\] val

---

### exitcode

Sets the application exit code. If this is called more than once, the last
value set will be the exit code. The exit code defaults to 0.


```pony
fun tag exitcode(
  code: I32 val)
: None val
```
#### Parameters

*   code: [I32](builtin-I32) val

#### Returns

* [None](builtin-None) val

---

## Private Functions

### _count_strings

```pony
fun tag _count_strings(
  data: Pointer[Pointer[U8 val] ref] val)
: USize val
```
#### Parameters

*   data: [Pointer](builtin-Pointer)\[[Pointer](builtin-Pointer)\[[U8](builtin-U8) val\] ref\] val

#### Returns

* [USize](builtin-USize) val

---

### _strings_from_pointers

```pony
fun tag _strings_from_pointers(
  data: Pointer[Pointer[U8 val] ref] val,
  len: USize val)
: Array[String val] iso^
```
#### Parameters

*   data: [Pointer](builtin-Pointer)\[[Pointer](builtin-Pointer)\[[U8](builtin-U8) val\] ref\] val
*   len: [USize](builtin-USize) val

#### Returns

* [Array](builtin-Array)\[[String](builtin-String) val\] iso^

---

