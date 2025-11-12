"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x2xi8>, i32) -> (tensor<4x2xi8>, i32), sym_name = "mixed_tensor_and_scalar_ops"}> ({
  ^bb0(%arg0: tensor<4x2xi8>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i8}> : () -> i8
    %1 = "arith.constant"() <{value = 2 : i8}> : () -> i8
    %2 = "arith.constant"() <{value = 3 : i8}> : () -> i8
    %3 = "arith.constant"() <{value = 4 : i8}> : () -> i8
    %4 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %5 = "arith.constant"() <{value = 6 : i32}> : () -> i32
    %6 = "arith.addi"(%arg1, %4) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %7 = "arith.muli"(%6, %5) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %8 = "tensor.extract"(%arg0, %0, %1) : (tensor<4x2xi8>, i8, i8) -> i8
    %9 = "arith.addi"(%8, %2) <{overflowFlags = #arith_overflow_none}> : (i8, i8) -> i8
    %10 = "tensor.insert"(%9, %arg0, %0, %1) : (i8, tensor<4x2xi8>, i8, i8) -> tensor<4x2xi8>
    %11 = "tensor.extract"(%arg0, %3, %1) : (tensor<4x2xi8>, i8, i8) -> i8
    %12 = "arith.muli"(%11, %2) <{overflowFlags = #arith_overflow_none}> : (i8, i8) -> i8
    %13 = "tensor.insert"(%12, %10, %3, %1) : (i8, tensor<4x2xi8>, i8, i8) -> tensor<4x2xi8>
    "func.return"(%13, %7) : (tensor<4x2xi8>, i32) -> ()
  }) : () -> ()
}) : () -> ()