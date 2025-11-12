"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_add_with_constant"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, i32) -> i32
    %3 = "arith.addi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg1, %0) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %5 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %6 = "tensor.extract"(%arg0, %5) : (tensor<4xi32>, i32) -> i32
    %7 = "arith.addi"(%6, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %4, %5) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%8) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_rotate"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, i32) -> i32
    %3 = "tensor.insert"(%2, %arg0, %1) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %4 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, i32) -> i32
    %6 = "tensor.insert"(%5, %3, %4) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %7 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %8 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, i32) -> i32
    %9 = "tensor.insert"(%8, %6, %7) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%9) : (tensor<4xi32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_reverse"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "arith.constant"() <{value = 0 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %3 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %4 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, i32) -> i32
    %5 = "tensor.extract"(%arg0, %1) : (tensor<4xi32>, i32) -> i32
    %6 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, i32) -> i32
    %7 = "tensor.extract"(%arg0, %3) : (tensor<4xi32>, i32) -> i32
    %8 = "tensor.insert"(%7, %arg0, %0) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %9 = "tensor.insert"(%6, %8, %1) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %10 = "tensor.insert"(%5, %9, %2) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %11 = "tensor.insert"(%4, %10, %3) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%11) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()