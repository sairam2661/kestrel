"builtin.module"() ({
  "func.func"() <{function_type = (i32, !secret
  , i64) -> (i32, !secret, i64), sym_name = "complex_mixed_op"}> ({
  ^bb0(%arg0: i32, %arg1: !secret, %arg2: i64):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
  , overflowFlags = #arith}> : (i32, i32) -> i32
    %3 = "arith.constant"() <{value = 3 : index}> : () -> index
    %4 = "tensor.from_elements"(%arg0, %arg0, %arg0, %arg0, %arg0, %arg0, %arg0, %arg0, %arg0, %arg0) : (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) -> tensor<10xi32>
    %5 = "tensor_ext.rotate"(%4, %3) : (tensor<10xi32>, index) -> tensor<10xi32>
    %6 = "tensor.extract"(%5, %3) : (tensor<10xi32>, index) -> i32
    %7 = "arith.muli"(%arg2, %6) <{overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith}> : (i64, i32) -> i64
    %8 = "arith.constant"() <{value = 1 : index}> : () -> index
    %9 = "tensor_ext.rotate"(%4, %8) : (tensor<10xi32>, index) -> tensor<10xi32>
    %10 = "tensor.extract"(%9, %8) : (tensor<10xi32>, index) -> i32
    %11 = "arith.addi"(%10, %6) <{overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith
      , overflowFlags = #arith}> : (i32, i32) -> i32
    "func.return"(%2, %arg1, %7) : (i32, !secret, i64) -> ()
  }) : () -> ()
}) : () -> ()