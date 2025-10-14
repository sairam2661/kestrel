module {
  func.func @remap_input_1_to_N(%arg0: f32) -> f32 {
    "test.return"(%arg0) : (f32) -> ()
  }
}

