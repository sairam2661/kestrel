"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32, tensor<4xi32>) -> tensor<4xi32>, sym_name = "complex_tensor_manipulation"}> ({
  ^bb0(%arg0: i32, %arg1: i32, %arg2: tensor<4xi32>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "tensor.extract"(%arg2, %0) : (tensor<4xi32>, i32) -> i32
    %4 = "arith.muli"(%3, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %6 = "arith.addi"(%arg0, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.extract"(%arg2, %6) : (tensor<4xi32>, i32) -> i32
    %8 = "arith.muli"(%7, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%4, %arg2, %0) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    %10 = "tensor.insert"(%8, %9, %6) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%10) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()