"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 0 : index}> : () -> index
    %3 = "arith.constant"() <{value = 1 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %2) : (tensor<16xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %3) : (tensor<16xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "arith.muli"(%6, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "arith.subi"(%7, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "arith.muli"(%8, %8) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %10 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %11 = "tensor.insert"(%9, %10, %3) : (i32, tensor<16xi32>, index) -> tensor<16xi32>
    "func.return"(%11) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) : () -> ()