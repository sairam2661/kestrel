module {
  func.func @dropped_input_in_use(%arg0: i16, %arg1: i64) {
    "work"(%arg0) : (i16) -> ()
  }
}

