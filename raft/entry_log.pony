

class val LogEntry
  let term: U64
  let index: U64

  new val create(term': U64, index': U64) =>
    term = term'
    index = index'


class EntryLog
  let entries: Array[LogEntry val]// = entries.create()
  var offset: U64 = 0


  new create(offset': U64 = 0) =>
    offset = offset'
    entries = Array[LogEntry val]()


  fun apply(index: U64): this->LogEntry val ? =>
    let i = USize.from[U64](index - offset)
    entries((index - offset).usize())?


  fun size(): U64 =>
    """
    Returns the size of
    """
    offset + entries.size().u64()


  fun ref truncate(len: U64) =>
    if len > size() then
      entries.truncate((len - offset).usize())
    end


  fun ref push(le: LogEntry val) =>
    entries.push(le)