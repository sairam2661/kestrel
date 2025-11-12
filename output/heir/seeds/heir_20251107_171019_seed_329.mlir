"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>, tensor<2x3xi32>) -> tensor<2x3xi32>, sym_name = "tensor_manipulation_function"}> ({
  ^bb0(%arg0: tensor<2x3xi32>, %arg1: tensor<2x3xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "arith.constant"() <{value = 4 : index}> : () -> index
    %5 = "arith.constant"() <{value = 5 : index}> : () -> index
    %6 = "tensor.extract"(%arg0, %0, %1) : (tensor<2x3xi32>, index, index) -> i32
    %7 = "tensor.extract"(%arg0, %1, %2) : (tensor<2x3xi32>, index, index) -> i32
    %8 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %arg1, %0, %1) : (i32, tensor<2x3xi32>, index, index) -> tensor<2x3xi32>
    %10 = "tensor.extract"(%arg0, %2, %0) : (tensor<2x3xi32>, index, index) -> i32
    %11 = "tensor.extract"(%arg1, %1, %2) : (tensor<2x3xi32>, index, index) -> i32
    %12 = "arith.subi"(%10, %11) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %13 = "tensor.insert"(%12, %9, %2, %0) : (i32, tensor<2x3xi32>, index, index) -> tensor<2x3xi32>
    %14 = "tensor.extract"(%arg0, %0, %2) : (tensor<2x3xi32>, index, index) -> i32
    %15 = "tensor.extract"(%arg1, %2, %1) : (tensor<2x3xi32>, index, index) -> i32
    %16 = "arith.muli"(%14, %15) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %17 = "tensor.insert"(%16, %13, %0, %2) : (i32, tensor<2x3xi32>, index, index) -> tensor<2x3xi32>
    "func.return"(%17) : (tensor<2x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()