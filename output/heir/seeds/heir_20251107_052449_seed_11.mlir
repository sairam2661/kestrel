"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "test_tensor_shuffle"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg1, %0) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg1, %1) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %9 = "tensor.extract"(%arg1, %2) : (tensor<4xi32>, index) -> i32
    %10 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %11 = "tensor.extract"(%arg1, %3) : (tensor<4xi32>, index) -> i32
    %12 = "arith.addi"(%4, %5) <{overflowFlags = #arith_overflow_identity}> : (i32, i32) -> i32
    %13 = "arith.addi"(%6, %7) <{overflowFlags = #arith_overflow_identity}> : (i32, i32) -> i32
    %14 = "arith.addi"(%8, %9) <{overflowFlags = #arith_overflow_identity}> : (i32, i32) -> i32
    %15 = "arith.addi"(%10, %11) <{overflowFlags = #arith_overflow_identity}> : (i32, i32) -> i32
    %16 = "tensor.empty"() : () -> tensor<4xi32>
    %17 = "tensor.insert"(%12, %16, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %18 = "tensor.insert"(%13, %17, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %19 = "tensor.insert"(%14, %18, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %20 = "tensor.insert"(%15, %19, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%20) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "test_add_with_select"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %2 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_identity}> : (i32, i32) -> i32
    %4 = "arith.select"(%arg0, %arg1, %2) : (i32, i32, i32) -> i32
    %5 = "arith.addi"(%3, %4) <{overflowFlags = #arith_overflow_identity}> : (i32, i32) -> i32
    "func.return"(%5) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "test_tensor_permute"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "arith.constant"() <{value = 1 : index}> : () -> index
    %2 = "arith.constant"() <{value = 2 : index}> : () -> index
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, index) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, index) -> i32
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, index) -> i32
    %8 = "tensor.empty"() : () -> tensor<4xi32>
    %9 = "tensor.insert"(%4, %8, %3) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %10 = "tensor.insert"(%5, %9, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %11 = "tensor.insert"(%6, %10, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %12 = "tensor.insert"(%7, %11, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%12) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()