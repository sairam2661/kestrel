module {
  func.func @remap_input_1_to_1(%arg0: i64) {
    "test.invalid"(%arg0) : (i64) -> ()
  }
  func.func @remap_call_1_to_1(%arg0: i64) {
    call @remap_input_1_to_1(%arg0) : (i64) -> ()
    return
  }
}

