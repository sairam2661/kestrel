module {
  func.func @remap_input_1_to_N_remaining_use(%arg0: f32) {
    "work"(%arg0) : (f32) -> ()
  }
  func.func @remap_materialize_1_to_1(%arg0: i42) {
    "test.return"(%arg0) : (i42) -> ()
  }
}

