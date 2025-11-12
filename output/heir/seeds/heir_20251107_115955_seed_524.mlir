"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>, sym_name = "tensor_rotate_and_mix"}> ({
  ^bb0(%arg0: tensor<2xi32>, %arg1: tensor<2xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<2xi32>, index) -> tensor<2xi32>
    %2 = "tensor_ext.rotate"(%arg1, %0) : (tensor<2xi32>, index) -> tensor<2xi32>
    %3 = "arith.addi"(%1, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    %4 = "tensor.insert"(%3, %1, %0) : (tensor<2xi32>, tensor<2xi32>, index) -> tensor<2xi32>
    %5 = "arith.muli"(%2, %4) <{overflowFlags = #arith_overflownone}> : (tensor<2xi32>, tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%5) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()