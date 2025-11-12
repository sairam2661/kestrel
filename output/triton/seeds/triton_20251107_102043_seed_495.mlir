"builtin.module"() ({
  "tt.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
    ^bb0(%arg0: i32, %arg1: i32):
      %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
      %1 = "arith.remsi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %2 = "arith.subi"(%arg0, %1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
      %3 = "arith.cmpi"(%2, %0) <{predicate = 4 : i64}> : (i32, i32) -> i1
      %4 = "scf.if"(%3) ({
        %5 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
        "scf.yield"(%5) : (i32) -> ()
      }, {
        "scf.yield"(%arg0) : (i32) -> ()
      }) : (i1) -> i32
      %6 = "tt.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()