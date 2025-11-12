"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_rotate_and_mix"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %3 = "tensor_ext.rotate"(%arg1, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %5 = "arith.muli"(%4, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "tensor_ext.rotate"(%5, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %7 = "arith.subi"(%6, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()