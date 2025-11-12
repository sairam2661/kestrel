"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "test_mixed_arithmetic"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %7 = "tensor.insert"(%6, %arg0, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %8 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %10 = "arith.subi"(%8, %9) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %7, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%11) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()