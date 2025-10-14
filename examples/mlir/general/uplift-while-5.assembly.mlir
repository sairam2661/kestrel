module {
  func.func @uplift_while(%arg0: index, %arg1: index, %arg2: index) -> (i32, f32) {
    %c1_i32 = arith.constant 1 : i32
    %cst = arith.constant 2.000000e+00 : f32
    %0:3 = scf.while (%arg3 = %c1_i32, %arg4 = %arg0, %arg5 = %cst) : (i32, index, f32) -> (index, i32, f32) {
      %1 = arith.cmpi slt, %arg4, %arg1 : index
      scf.condition(%1) %arg4, %arg3, %arg5 : index, i32, f32
    } do {
    ^bb0(%arg3: index, %arg4: i32, %arg5: f32):
      %1 = "test.test1"(%arg4) : (i32) -> i32
      %2 = arith.addi %arg3, %arg2 : index
      %3 = "test.test2"(%arg5) : (f32) -> f32
      scf.yield %1, %2, %3 : i32, index, f32
    }
    return %0#1, %0#2 : i32, f32
  }
}

