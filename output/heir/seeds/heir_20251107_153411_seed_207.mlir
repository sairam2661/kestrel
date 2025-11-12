"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "mixed_tensor_operations"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %4 = "tensor.extract"(%arg1, %1) : (tensor<8xi32>, index) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<8xi32>, index) -> i32
    %7 = "arith.muli"(%5, %6) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    %8 = "tensor_ext.rotate"(%arg0, %0) : (tensor<8xi32>, index) -> tensor<8xi32>
    %9 = "tensor.insert"(%7, %8, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%9) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()