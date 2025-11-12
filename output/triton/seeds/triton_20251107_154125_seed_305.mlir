"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>, sym_name = "mixed_ops"}> ({
  ^bb0(%arg0: tensor<16xi32>, %arg1: tensor<16xi32>):
    %0 = "tt.make_range"() <{end = 16 : i32, start = 0 : i32}> : () -> tensor<16xi32>
    %1 = "arith.constant"() <{value = dense<2> : tensor<16xi32>}> : () -> tensor<16xi32>
    %2 = "arith.muli"(%arg0, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %3 = "arith.divsi"(%arg1, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %4 = "arith.remsi"(%arg0, %1) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %5 = "arith.select"(%2, %3, %4) <{predicate = #arith_cmpi_e}> : (tensor<16xi32>, tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    %6 = "arith.subi"(%5, %0) <{overflowFlags = #arith_overflow_flags}> : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
    "tt.return"(%6) : (tensor<16xi32>) -> ()
  }) : (tensor<16xi32>, tensor<16xi32>) -> tensor<16xi32>
}) {"ttg.num-warps" = 4 : i32} : () -> ()