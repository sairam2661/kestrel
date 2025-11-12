"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>, sym_name = "tensor_add"}> ({
  ^bb0(%arg0: tensor<3xi32>, %arg1: tensor<3xi32>):
    %0 = "tensor.empty"() : () -> tensor<3xi32>
    %1 = "linalg.map"(%arg0, %arg1, %0) ({
    ^bb0(%arg2: i32, %arg3: i32):
      %4 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "linalg.yield"(%4) : (i32) -> ()
    }) : (tensor<3xi32>, tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "func.return"(%1) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()