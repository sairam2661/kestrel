module {
  func.func @uplift_while(%arg0: i64, %arg1: i64, %arg2: i64) -> i64 {
    %0 = scf.while (%arg3 = %arg0) : (i64) -> i64 {
      %1 = arith.cmpi slt, %arg3, %arg1 : i64
      scf.condition(%1) %arg3 : i64
    } do {
    ^bb0(%arg3: i64):
      "test.test1"(%arg3) : (i64) -> ()
      %1 = arith.addi %arg3, %arg2 : i64
      "test.test2"(%1) : (i64) -> ()
      scf.yield %1 : i64
    }
    return %0 : i64
  }
}

