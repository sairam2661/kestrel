"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "rotate_and_add"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "tensor_ext.rotate"(%arg0) <{axis = 1}> : (tensor<2x3xi32>) -> tensor<2x3xi32>
    %1 = "arith.addi"(%0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>
    "func.return"(%1) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()