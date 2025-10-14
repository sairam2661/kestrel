module {
  func.func @for_yields_4() -> i32 {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3_i32 = arith.constant 3 : i32
    %c4_i32 = arith.constant 4 : i32
    %0 = scf.for %arg0 = %c0 to %c2 step %c1 iter_args(%arg1 = %c3_i32) -> (i32) {
      scf.yield %c4_i32 : i32
    }
    return %0 : i32
  }
}

