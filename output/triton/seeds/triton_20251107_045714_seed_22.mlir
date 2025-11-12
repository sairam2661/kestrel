"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> (), sym_name = "complex_control_flow", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.cmpi"(%arg0, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
    "scf.if"(%2) ({
      %3 = "scf.for"(%arg1, %arg1, %0, %1) ({
      ^bb0(%arg2: i32, %arg3: i32):
        %4 = "arith.addi"(%arg3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%4) : (i32) -> ()
      }) : (i32, i32, i32, i32) -> i32
      "scf.yield"(%3) : (i32) -> ()
    }, {
      %5 = "arith.constant"() <{value = 20 : i32}> : () -> i32
      %6 = "arith.cmpi"(%arg0, %5) <{predicate = 4 : i64}> : (i32, i32) -> i1
      "scf.if"(%6) ({
        %7 = "scf.for"(%arg1, %arg1, %0, %1) ({
        ^bb0(%arg2: i32, %arg3: i32):
          %8 = "arith.addi"(%arg3, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
          "scf.yield"(%8) : (i32) -> ()
        }) : (i32, i32, i32, i32) -> i32
        "scf.yield"(%7) : (i32) -> ()
      }, {
        "scf.yield"() : () -> ()
      }) : (i1) -> ()
    }) : (i1) -> ()
    "tt.return"() : () -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32, ttg.target = "cuda:90", "ttg.threads-per-warp" = 32 : i32} : () -> ()