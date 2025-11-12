"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>, sym_name = "test_bitwise_xor"}> ({
  ^bb0(%arg0: tensor<2x3x4xi32>, %arg1: tensor<2x3x4xi32>):
    %0 = "arith.constant"() <{value = 123 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 456 : i32}> : () -> i32
    %2 = "arith.addi"(%0, %1) <{overflowFlags = #arith_overflow_mode} > : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %0) <{overflowFlags = #arith_overflow_mode} > : (i32, i32) -> i32
    %4 = "arith.xori"(%arg0, %arg1) : (tensor<2x3x4xi32>, tensor<2x3x4xi32>) -> tensor<2x3x4xi32>
    "func.return"(%4) : (tensor<2x3x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()