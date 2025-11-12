"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<3x2xi32>) -> tensor<2x2xi32>, sym_name = "matrix_multiply"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<3x2xi32>):
    %0 = "tensor.empty"() : () -> tensor<2x2xi32>
    %1 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %2 = "linalg.map"(%arg0, %arg1, %0, %1) ({
    ^bb0(%arg2: i32, %arg3: i32, %arg4: i32, %arg5: i32):
      %6 = "arith.muli"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      %7 = "arith.addi"(%arg4, %6) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
      "linalg.yield"(%7) : (i32) -> ()
    }) : (tensor<2x3xi32>, tensor<3x2xi32>, tensor<2x2xi32>, i32) -> tensor<2x2xi32>
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()