"builtin.module"() ({
  "tt.func"() <{arg_attrs = [{tt.divisibility = 16 : i32}], function_type = (i32, i32) -> (i32), sym_name = "unusual_combinations"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "tt.reduce"() ({
    ^bb0(%arg2: i32, %arg3: i32):
      %1 = "arith.addi"(%arg2, %arg3) : (i32, i32) -> i32
      "scf.yield"(%1) : (i32) -> ()
    }) : (i32, i32) -> i32
    %2 = "tt.expand_dims"(%0, 0) : (i32) -> tensor<1xi32>
    %3 = "tg.global_scratch_alloc"() <{size = 1024 : i32}> : () -> !ttg_ptr
    %4 = "tt.addptr"(%3, %0) : (!ttg_ptr, i32) -> !ttg_ptr
    %5 = "scf.if"(%arg0) ({
      %6 = "arith.subi"(%arg0, %arg1) : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
      %7 = "arith.subi"(%arg1, %arg0) : (i32, i32) -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i32) -> i32
    %8 = "arith.cmpi"(%arg0, %arg1, "eq") : (i32, i32) -> i1
    "tt.return"(%0, %5, %8) : (i32, i32, i1) -> ()
  }) : () -> (i32, i32, i1)
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, "ttg.threads-per-warp" = 32 : i32} : () -> ()