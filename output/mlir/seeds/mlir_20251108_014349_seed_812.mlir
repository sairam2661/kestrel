"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_arith"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_signed}> : (i32, i32) -> i32
    %2 = "arith.cmpi"(%1, %0) <{predicate = 6 : i64}> : (i32, i32) -> i1
    %3 = "scf.if"(%2) ({
      %4 = "arith.mulsi"(%1, %1) <{overflowFlags = #arith_overflow_signed}> : (i32, i32) -> i32
      "scf.yield"(%4) : (i32) -> ()
    }, {
      %5 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_signed}> : (i32, i32) -> i32
      "scf.yield"(%5) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
}) : () -> ()