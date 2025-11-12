"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, index) -> tensor<4xi32>, sym_name = "complex_rotate_and_ops"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: index):
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "arith.constant"() <{value = 2 : index}> : () -> index
    %4 = "tensor_ext.rotate"(%arg0, %2) : (tensor<4xi32>, index) -> tensor<4xi32>
    %5 = "arith.addi"(%4, %arg0) <{overflowFlags = #arith_overflow_}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %6 = "tensor_ext.rotate"(%5, %3) : (tensor<4xi32>, index) -> tensor<4xi32>
    %7 = "arith.muli"(%6, %arg0) <{overflowFlags = #arith_overflow_}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %8 = "tensor_ext.rotate"(%7, %2) : (tensor<4xi32>, index) -> tensor<4xi32>
    %9 = "arith.addi"(%8, %arg0) <{overflowFlags = #arith_overflow_}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    %10 = "tensor.insert"(%9, %2, %3) : (tensor<4xi32>, i32, index) -> tensor<4xi32>
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()