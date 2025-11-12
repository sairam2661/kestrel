"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_op_mixed_ops"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %3 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.muli"(%4, %4) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.subi"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "arith.constant"() <{value = 3 : index}> : () -> index
    %9 = "tensor.extract"(%arg1, %8) : (tensor<4xi32>, index) -> i32
    %10 = "arith.addi"(%3, %9) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %arg1, %8) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%7) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()