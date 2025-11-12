"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i64) -> (tensor<128xi32>, i32), sym_name = "mixed_types"}> ({
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 100 : i64}> : () -> i64
    %2 = "tt.make_range"() <{end = 128 : i32, start = 0 : i32}> : () -> tensor<128xi32>
    %3 = "arith.constant"() <{value = dense<2> : tensor<128xi32>}> : () -> tensor<128xi32>
    %4 = "arith.addi"(%2, %3) <{overflowFlags = #arith_overflownone}> : (tensor<128xi32>, tensor<128xi32>) -> tensor<128xi32>
    %5 = "arith.xori"(%0, %0) : (i32, i32) -> i32
    %6 = "arith.divsi"(%1, %0) <{overflowFlags = #arith_overflownone}> : (i64, i32) -> i64
    %7:2 = "scf.if"(%5) ({
    ^bb0:
      %8 = "arith.remsi"(%6, %0) : (i64, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }) : (i32)
    "tt.return"(%4, %7) : (tensor<128xi32>, i32) -> ()
  }) : () -> ()
}) : () -> ()