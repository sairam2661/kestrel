"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_rotate_and_accumulate"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %4 = "tensor_ext.rotate"(%arg0, %1) : (tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "tensor_ext.rotate"(%arg0, %2) : (tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "arith.addi"(%arg1, %3) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %7 = "arith.addi"(%6, %4) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %8 = "arith.addi"(%7, %5) <{overflowFlags = #arith_overflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()