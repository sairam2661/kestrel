module {
  func.func @add(%arg0: i32, %arg1: i32) -> i32 attributes {llvm.emit_c_interface} {
    %0 = arith.addi %arg0, %arg1 : i32
    return %0 : i32
  }
}

