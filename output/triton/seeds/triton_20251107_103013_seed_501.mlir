"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> tensor<128xi1>, sym_name = "comparison_chain", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 128 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 64 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 32 : i32}> : () -> i32
    %3 = "tt.make_range"() <{start = 0 : i32, end = 128 : i32}> : () -> tensor<128xi32>
    %4 = "arith.shli"(%3, %0) <{overflowFlags = #arith_overflow_flags_attr}> : (tensor<128xi32>, i32) -> tensor<128xi32>
    %5 = "arith.shli"(%3, %1) <{overflowFlags = #arith_overflow_flags_attr}> : (tensor<128xi32>, i32) -> tensor<128xi32>
    %6 = "arith.shli"(%3, %2) <{overflowFlags = #arith_overflow_flags_attr}> : (tensor<128xi32>, i32) -> tensor<128xi32>
    %7 = "arith.cmpi"(%4, %5) <{predicate = 5 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %8 = "arith.cmpi"(%5, %6) <{predicate = 6 : i64}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi1>
    %9 = "arith.andi"(%7, %8) : (tensor<128xi1>, tensor<128xi1>) -> tensor<128xi1>
    "tt.return"(%9) : (tensor<128xi1>) -> ()
  }) : () -> ()
}) : () -> ()