module {
  func.func @remap_input_to_self(%arg0: index) {
    "work"(%arg0) : (index) -> ()
  }
  func.func @remap_multi(%arg0: i64, %arg1: i16, %arg2: i64) -> (i64, i64) {
    "test.invalid"(%arg0, %arg2) : (i64, i64) -> ()
  }
}

