"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "unusual_combinations", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 1 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %2 = "scf.if"(%arg0) ({
      ^bb0:
        %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
    }, {
      ^bb1:
        %3 = "arith.muli"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
        "scf.yield"(%3) : (i32) -> ()
    }) : (i32) -> i32
    %4 = "arith.cmpi"(%2, %1) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %5 = "arith.xori"(%4, %0) : (i1, i32) -> i32
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 2 : i32, "ttg.num-warps" = 8 : i32} : () -> ()