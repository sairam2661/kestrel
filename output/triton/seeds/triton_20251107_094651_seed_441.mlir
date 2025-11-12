"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_operands", sym_visibility = "public"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 10 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 20 : i32}> : () -> i32
    %2 = "arith.xori"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %3 = "arith.addi"(%2, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.cmpi"(%3, %arg1) <{predicate = 4 : i64}> : (i32, i32) -> i1
    %5 = "scf.if"(%4) ({
    ^bb0:
      %6 = "arith.constant"() <{value = 1 : i32}> : () -> i32
      "scf.yield"(%6) : (i32) -> ()
    }, {
    ^bb1:
      %7 = "arith.constant"() <{value = 0 : i32}> : () -> i32
      "scf.yield"(%7) : (i32) -> ()
    }) : (i32)
    "tt.return"(%5) : (i32) -> ()
  }) : () -> ()
}) {"ttg.num-ctas" = 1 : i32, "ttg.num-warps" = 4 : i32} : () -> ()