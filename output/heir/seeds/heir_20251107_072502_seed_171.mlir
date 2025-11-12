"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index) -> tensor<4xi32>, sym_name = "rotate_and_sum"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "tensor_ext.rotate"(%arg0, %0) : (tensor<4xi32>, index) -> tensor<4xi32>
    %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arithoverflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor_ext.rotate"(%arg0, %3) : (tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "arith.addi"(%2, %4) <{overflowFlags = #arithoverflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "arith.constant"() <{value = 3 : index}> : () -> index
    %7 = "tensor_ext.rotate"(%arg0, %6) : (tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "arith.addi"(%5, %7) <{overflowFlags = #arithoverflownone}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()