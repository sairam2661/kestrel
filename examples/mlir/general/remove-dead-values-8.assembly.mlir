module {
  func.func private @clean_func_op_dont_remove_return_values() -> (i32, i32) {
    %c0_i32 = arith.constant 0 : i32
    return %c0_i32, %c0_i32 : i32, i32
  }
  func.func @main() -> (i32, i32) {
    %0:2 = call @clean_func_op_dont_remove_return_values() : () -> (i32, i32)
    %1:2 = call @clean_func_op_dont_remove_return_values() : () -> (i32, i32)
    return %0#0, %1#1 : i32, i32
  }
}

