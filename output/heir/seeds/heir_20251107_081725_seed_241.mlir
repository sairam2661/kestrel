"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "tensor_mixed_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<8xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %0) : (tensor<8xi32>, index) -> i32
    %9 = "tensor.extract"(%arg1, %1) : (tensor<8xi32>, index) -> i32
    %10 = "tensor.extract"(%arg1, %2) : (tensor<8xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %3) : (tensor<8xi32>, index) -> i32
    %12 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %13 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %14 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %15 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %16 = "arith.muli"(%12, %13) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %17 = "arith.muli"(%14, %15) <{overflowFlags = #arith_overflow_flags}> : (i32, i32) -> i32
    %18 = "tensor.insert"(%16, %arg0, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %19 = "tensor.insert"(%17, %18, %1) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%19) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()