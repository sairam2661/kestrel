module {
  func.func @non_memref_types(%arg0: f32) -> f32 {
    %0 = "dialect.op"(%arg0) {attr = 16 : i64} : (f32) -> f32
    return %0 : f32
  }
}

