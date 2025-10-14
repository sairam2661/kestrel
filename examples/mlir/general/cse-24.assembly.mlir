module {
  func.func @cse_recursive_effects_success() -> (i32, i32, i32) {
    %0 = "test.op_with_memread"() : () -> i32
    %true = arith.constant true
    %1 = scf.if %true -> (i32) {
      %c42_i32 = arith.constant 42 : i32
      scf.yield %c42_i32 : i32
    } else {
      %c24_i32 = arith.constant 24 : i32
      scf.yield %c24_i32 : i32
    }
    %2 = "test.op_with_memread"() : () -> i32
    return %0, %2, %1 : i32, i32, i32
  }
}

