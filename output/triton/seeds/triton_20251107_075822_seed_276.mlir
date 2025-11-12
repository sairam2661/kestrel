"builtin.module"() ({
  "tt.func"() <{function_type = (!tt_ptr, !tt_ptr) -> (!tt_ptr, !tt_ptr), sym_name = "complex_interactions"}> ({
  ^bb0(%arg0: !tt_ptr, %arg1: !tt_ptr):
    %0 = "arith.constant"() <{value = dense<1.000000e+00> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %1 = "arith.constant"() <{value = dense<2.000000e+00> : tensor<8x8xf32>}> : () -> tensor<8x8xf32>
    %2 = "tt.addptr"(%arg0, %0) : (!tt_ptr, tensor<8x8xf32>) -> !tt_ptr
    %3 = "tt.addptr"(%arg1, %1) : (!tt_ptr, tensor<8x8xf32>) -> !tt_ptr
    %4 = "scf.for"(%2, %3) ({
    ^bb0(%arg2: !tt_ptr, %arg3: !tt_ptr):
      %5 = "tt.expand_dims"(%arg2) <{axis = 0 : i32}> : (!tt_ptr) -> !tt_ptr
      %6 = "tt.expand_dims"(%arg3) <{axis = 1 : i32}> : (!tt_ptr) -> !tt_ptr
      "scf.yield"(%5, %6) : (!tt_ptr, !tt_ptr) -> ()
    }) : (!tt_ptr, !tt_ptr) -> (!tt_ptr, !tt_ptr)
    %7 = "tt.call"(%4, %4) : (!tt_ptr, !tt_ptr) -> (!tt_ptr, !tt_ptr)
    "tt.return"(%7, %7) : (!tt_ptr, !tt_ptr) -> ()
  }) : () -> ()
}) {"ttg.compute-capability" = 0 : i32, "ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()