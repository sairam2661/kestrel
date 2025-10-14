module {
  func.func private @clean_func_op_remove_argument_and_return_value(%arg0: i32) -> i32 {
    return %arg0 : i32
  }
  func.func @main(%arg0: i32) {
    %0 = call @clean_func_op_remove_argument_and_return_value(%arg0) : (i32) -> i32
    return
  }
}

