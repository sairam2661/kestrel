"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>, sym_name = "tensor_add_mixed_layouts"}> ({
  ^bb0(%arg0: tensor<2x2xi32>, %arg1: tensor<2x2xi32>):
    %0 = "tensor_ext.assign_layout"(%arg0) <{layout = {offset = 0, strides = [4, 8]}}> : (tensor<2x2xi32>) -> tensor<2x2xi32>
    %1 = "tensor_ext.assign_layout"(%arg1) <{layout = {offset = 0, strides = [8, 16]}}> : (tensor<2x2xi32>) -> tensor<2x2xi32>
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_none}> : (tensor<2x2xi32>, tensor<2x2xi32>) -> tensor<2x2xi32>
    "func.return"(%2) : (tensor<2x2xi32>) -> ()
  }) : () -> ()
}) : () -> ()