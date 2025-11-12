"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>, index) -> tensor<8xi32>, sym_name = "tensor_rotation_and_arith"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>, %arg2: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "tensor_ext.rotate"(%2, %arg2) : (tensor<8xi32>, index) -> tensor<8xi32>
    %4 = "arith.muli"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %5 = "tensor_ext.rotate"(%4, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %6 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>, index) -> tensor<8xi32>, sym_name = "tensor_rotation_and_arith_break"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>, %arg2: index):
    %0 = "arith.constant"() <{value = 2 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %2 = "arith.addi"(%1, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %3 = "tensor_ext.rotate"(%2, %arg2) : (tensor<8xi32>, index) -> tensor<8xi32>
    %4 = "arith.muli"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    %5 = "tensor_ext.rotate"(%4, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %6 = "arith.addi"(%5, %arg0) <{overflowFlags = #arith_overflownone}> : (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>
    "func.return"(%6) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()