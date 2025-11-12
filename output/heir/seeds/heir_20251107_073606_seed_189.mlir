"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, i32) -> tensor<4xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 2 : i32}> : () -> i32
    %2 = "arith.muli"(%arg1, %0) <{overflowFlags = #arith_overflow_never}> : (i32, i32) -> i32
    %3 = "arith.addi"(%arg1, %1) <{overflowFlags = #arith_overflow_never}> : (i32, i32) -> i32
    %4 = "tensor.extract"(%arg0, %2) : (tensor<4xi32>, i32) -> i32
    %5 = "arith.muli"(%4, %3) <{overflowFlags = #arith_overflow_never}> : (i32, i32) -> i32
    %6 = "tensor.insert"(%5, %arg0, %2) : (i32, tensor<4xi32>, i32) -> tensor<4xi32>
    "func.return"(%6) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()