module {
  func.func @foo(%arg0: i32) {
    emitc.call_opaque "bar"(%arg0) : (i32) -> ()
    return
  }
}

