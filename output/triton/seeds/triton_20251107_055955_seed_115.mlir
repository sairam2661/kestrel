"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_func"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.xori"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %2 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %3 = "arith.divsi"(%arg1, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %4 = "arith.remsi"(%arg0, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      %5 = "arith.cmpi"(%arg0, %4, "slt") <{predicate = "slt"}> : (i32, i32) -> i1
      %6 = "scf.if"(%5) ({
        "scf.yield"(%2) : (i32) -> ()
      }, {
        "scf.yield"(%3) : (i32) -> ()
      }) : (i1) -> i32
      "tt.return"(%6) : (i32) -> i32
  }) : (i32, i32) -> i32
}) : () -> ()