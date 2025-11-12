"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_mixer"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tensor_ext.rotate"(%arg0) <{shift = 1, dimension = 0}> : (tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "tensor_ext.rotate"(%arg1) <{shift = -1, dimension = 1}> : (tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()