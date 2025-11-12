"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>, i8) -> tensor<4xi8>, sym_name = "complex_tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi8>, %arg1: i8):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %3 = "arith.constant"() <{value = 4 : i8}> : () -> i8
    %4 = "arith.constant"() <{value = 5 : i8}> : () -> i8
    %5 = "arith.constant"() <{value = 6 : i8}> : () -> i8
    %6 = "arith.constant"() <{value = 7 : i8}> : () -> i8
    %7 = "arith.constant"() <{value = 8 : i8}> : () -> i8
    %8 = "arith.addi"(%arg1, %0) <{overflowFlags = #arith_overflow_mode_wrap}> : (i8, i8) -> i8
    %9 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflow_mode_wrap}> : (i8, i8) -> i8
    %10 = "arith.addi"(%arg1, %2) <{overflowFlags = #arith_overflow_mode_wrap}> : (i8, i8) -> i8
    %11 = "arith.addi"(%arg1, %3) <{overflowFlags = #arith_overflow_mode_wrap}> : (i8, i8) -> i8
    %12 = "tensor.insert"(%8, %arg0, %0) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %13 = "tensor.insert"(%9, %12, %1) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %14 = "tensor.insert"(%10, %13, %2) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    %15 = "tensor.insert"(%11, %14, %3) : (i8, tensor<4xi8>, index) -> tensor<4xi8>
    "func.return"(%15) : (tensor<4xi8>) -> ()
  }) : () -> ()
}) : () -> ()