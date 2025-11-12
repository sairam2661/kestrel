"builtin.module"() ({
  "func.func"() <{function_type = (i32, tensor<4x4xi32>, i32) -> i32, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: i32, %arg1: tensor<4x4xi32>, %arg2: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %2 = "tensor.extract"(%arg1, %0, %0) : (tensor<4x4xi32>, i32, i32) -> i32
    %3 = "arith.subi"(%2, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "tensor.insert"(%3, %arg1, %0, %0) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %5 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %6 = "arith.addi"(%arg0, %5) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %7 = "tensor.extract"(%arg1, %5, %5) : (tensor<4x4xi32>, i32, i32) -> i32
    %8 = "arith.subi"(%7, %arg2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %9 = "tensor.insert"(%8, %arg1, %5, %5) : (i32, tensor<4x4xi32>, i32, i32) -> tensor<4x4xi32>
    %10 = "arith.addi"(%1, %6) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    "func.return"(%10) : (i32) -> ()
  }) : () -> ()
}) : () -> ()