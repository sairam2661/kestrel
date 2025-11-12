"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>, i1) -> (tensor<16xi32>, tensor<16xi32>), sym_name = "mixed_ops"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>, %arg2: i1):
      %0 = "arith.remsi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %1 = "arith.addi"(%arg0, %arg1) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %2 = "arith.select"(%arg2, %0, %1) : (i1, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.constant"() <{value = 10 : i32}> : () -> i32
      %4 = "arith.addi"(%3, %3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %5 = "arith.divsi"(%4, %3) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %6 = "arith.remsi"(%5, %3) : (i32, i32) -> i32
      "tt.return"(%2, %6) : (tensor<16xi32>, i32) -> ()
  }) : () -> ()
}) : () -> ()