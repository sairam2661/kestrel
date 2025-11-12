"builtin.module"() ({
  "tt.func"() <{function_type = (tensor<8xi32>, tensor<8xi32>) -> tensor<8xi32>, sym_name = "vector_add", sym_visibility = "public"}> ({
  ^bb0(%arg0: tensor<8xi32>, %arg1: tensor<8xi32>):
    %0 = "scf.for"() ( {
      %i = "arith.constant"() <{value = 0 : i32}> : () -> i32
      %cond = "arith.cmpi"(%i, "arith.constant" 	) <{predicate = "slt"}> : (i32, i32) -> i1
      scf.yield %cond : i1
    }) {
      "scf.for" 	= "scf.yield" : () -> ()
    } : (i32) -> i32
    "tt.return"(%0) : (tensor<8xi32>) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()