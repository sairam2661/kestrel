"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<i32>, tensor<i32>) -> tensor<i32>, sym_name = "fuzz_test", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "tt.make_range"(%0) <{length = 10 : i32}> : (i32) -> tensor<i32>
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_treats_undefined}> : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %3 = "arith.xori"(%2, %0) : (tensor<i32>, i32) -> tensor<i32>
    %4 = "arith.divsi"(%3, %0) <{overflowFlags = #arith_overflow_returning} >: (tensor<i32>, i32) -> tensor<i32>
    %5 = "arith.muli"(%4, %0) : (tensor<i32>, i32) -> tensor<i32>
    %6 = "arith.remsi"(%5, %0) : (tensor<i32>, i32) -> tensor<i32>
    %7 = "scf.if"(%6) ({
    ^bb0():
      %8 = "arith.subi"(%arg0, %0) : (tensor<i32>, i32) -> tensor<i32>
      "scf.yield"(%8) : (tensor<i32>) -> tensor<i32>
    }) {
    } : (tensor<i32>) -> tensor<i32>
    %9 = "tt.expand_dims"(%7, %0) : (tensor<i32>, i32) -> tensor<1xi32>
    "tt.return"(%9) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()