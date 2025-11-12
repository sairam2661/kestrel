"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_division"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.cmpi"(%arg0, %arg1) <{predicate = "eq"}> : (i32, i32) -> i1
      "scf.if"(%0) ({
        ^bb1:
          %1 = "arith.constant"() <{value = dense<0> : tensor<1x1xi32>}> : () -> tensor<1x1xi32>
          "tt.return"(%1) : (tensor<1x1xi32>) -> ()
      }) {
        "scf.yield" 	= "ttg.global_scratch_alloc" : () -> !ttg
      }
      : i1
      %2 = "arith.divsi"(%arg0, %arg1) : (i32, i32) -> i32
      "tt.return"(%2) : (i32) -> ()
  }) : (i32, i32) -> i32
}) {"ttg.num-warps" = 1 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()