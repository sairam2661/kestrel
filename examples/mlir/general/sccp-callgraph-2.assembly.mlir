module {
  module @nested_module attributes {sym_visibility = "public"} {
    func.func nested @nested(%arg0: i32) -> (i32, i32) {
      %c1_i32 = arith.constant 1 : i32
      return %c1_i32, %arg0 : i32, i32
    }
    func.func @nested_not_all_uses_visible() -> (i32, i32) {
      %c1_i32 = arith.constant 1 : i32
      %0:2 = call @nested(%c1_i32) : (i32) -> (i32, i32)
      return %0#0, %0#1 : i32, i32
    }
  }
}

