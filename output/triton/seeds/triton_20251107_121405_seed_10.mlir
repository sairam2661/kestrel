"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "fuzz_complex"}> ({
    ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
      %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
      %1 = "arith.constant"() <{value = dense<5> : tensor<16xi32>}> : () -> tensor<16xi32>
      %2 = "arith.addi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %3 = "arith.remsi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %4 = "arith.xori"(%3, %0) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      %5 = "arith.cmpi"(%4, %arg1) <{predicate = 4 : i64}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi1>
      %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      %7 = "tt.splat"(%6) : (i32) -> tensor<16xi32>
      %8 = "arith.select"(%5, %7, %arg0) : (tensor<16xi1>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
      "tt.return"(%8) : (tensor<16xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()