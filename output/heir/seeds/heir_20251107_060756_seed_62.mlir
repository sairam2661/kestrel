"builtin.module"() ({
  "func.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "mismatched_tensor_ops"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "arith.constant"() <{value = 1 : index}> : () -> index
    %1 = "arith.constant"() <{value = 2 : index}> : () -> index
    %2 = "arith.constant"() <{value = 3 : index}> : () -> index
    %3 = "arith.constant"() <{value = 4 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<8xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %0) : (tensor<8xi32>, index) -> i32
    %6 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_truncate}> : (i32, i32) -> i32
    %7 = "tensor.extract"(%arg0, %1) : (tensor<8xi32>, index) -> i32
    %8 = "tensor.extract"(%arg1, %1) : (tensor<8xi32>, index) -> i32
    %9 = "arith.subi"(%7, %8) <{overflowFlags = #arith_overflow_truncate}> : (i32, i32) -> i32
    %10 = "tensor.extract"(%arg0, %2) : (tensor<8xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %2) : (tensor<8xi32>, index) -> i32
    %12 = "arith.muli"(%10, %11) <{overflowFlags = #arith_overflow_truncate}> : (i32, i32) -> i32
    %13 = "tensor.extract"(%arg0, %3) : (tensor<8xi32>, index) -> i32
    %14 = "tensor.extract"(%arg1, %3) : (tensor<8xi32>, index) -> i32
    %15 = "arith.divsi"(%13, %14) <{overflowFlags = #arith_overflow_truncate, signedness = #arith_signed}> : (i32, i32) -> i32
    %16 = "tensor.empty"() <{shape = [8], elementType = i32}> : () -> tensor<8xi32>
    %17 = "tensor.insert"(%6, %16, %0) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %18 = "tensor.insert"(%9, %17, %1) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %19 = "tensor.insert"(%12, %18, %2) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    %20 = "tensor.insert"(%15, %19, %3) : (i32, tensor<8xi32>, index) -> tensor<8xi32>
    "func.return"(%20) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) : () -> ()