"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>, sym_name = "matrix_complex_op"}> ({
  ^bb0(%arg0: tensor<4x4xi32>, %arg1: i32, %arg2: i32):
    %0 = "arith.cmpi"(%arg1, %arg2, "eq") : (i32, i32) -> i1
    %1 = "arith.select"(%0, %arg1, %arg2) : (i1, i32, i32) -> i32
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.subi"(%arg2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.muli"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.addf"(%4, %4) : (i32, i32) -> f32
    %6 = "tensor.extract"(%arg0, %2, %3) : (tensor<4x4xi32>, i32, i32) -> i32
    %7 = "tensor.insert"(%arg0, %6, %2, %3) : (tensor<4x4xi32>, i32, i32, i32) -> tensor<4x4xi32>
    "func.return"(%7) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()