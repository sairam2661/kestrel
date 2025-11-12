"builtin.module"() ({
  "tt.func"() <{function_type = (!ttptr, !tensor) -> (!ttptr, !tensor), sym_name = "complex_reduce_and_addptr"}> ({
  ^bb0(%arg0: !ttptr, %arg1: !tensor):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "tt.make_range"(%0) : (i32) -> !ttptr
    %2 = "arith.constant"() <{value = dense<0.000000e+00> : tensor<8xf32>}> : () -> tensor<8xf32>
    %3 = "tt.reduce"(%1, %arg1, %2) {
      "tt.reduce.operation" = "arith.addf"
    } : (!ttptr, !tensor, !tensor) -> !tensor
    %4 = "tt.addptr"(%arg0, %0) : (!ttptr, i32) -> !ttptr
    "tt.return"(%4, %3) : (!ttptr, !tensor) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 2 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()