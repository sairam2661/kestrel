"builtin.module"() ({
  "func.func"() <{arg_attrs = [{tensor_ext.secret}, {tensor_ext.secret}], function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "rotate_tensors"}> ({
    ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
      %0 = "tensor_ext.rotate"(%arg0, %arg1) <{steps = 2}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      %2 = "tensor_ext.rotate"(%1, %arg1) <{steps = 1}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "func.return"(%2) : (tensor<4xi32>) -> ()
    }) : () -> ()
}) : () -> ()