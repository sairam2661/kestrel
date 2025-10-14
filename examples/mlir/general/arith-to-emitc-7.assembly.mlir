module {
  func.func @arith_signed_integer_div_rem(%arg0: i32, %arg1: i32) {
    %0 = arith.divsi %arg0, %arg1 : i32
    %1 = arith.remsi %arg0, %arg1 : i32
    return
  }
}

