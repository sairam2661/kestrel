"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %3 = "tensor.extract"(%arg0, %0) : (tensor<4xi32>, index) -> i32
    %4 = "arith.addi"(%3, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "tensor.insert"(%4, %arg0, %0) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %6 = "tensor.extract"(%5, %1) : (tensor<4xi32>, index) -> i32
    %7 = "arith.subi"(%6, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %8 = "tensor.insert"(%7, %5, %1) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    %9 = "tensor.extract"(%8, %2) : (tensor<4xi32>, index) -> i32
    %10 = "arith.muli"(%9, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %11 = "tensor.insert"(%10, %8, %2) : (i32, tensor<4xi32>, index) -> tensor<4xi32>
    "func.return"(%11) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()