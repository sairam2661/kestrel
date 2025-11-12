"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_rotate_and_add"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tensor_ext.rotate"(%arg0) <{axis = 1}> : (tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "arith.addi"(%0, %arg1) <{overflowFlags = #arith_overflow_mode}>: (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%1) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()