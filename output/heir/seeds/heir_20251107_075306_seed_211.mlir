"builtin.module"() ({
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.constant"() <{value = 3 : i32}> : () -> i32
    %1 = "arith.constant"() <{value = 5 : i32}> : () -> i32
    %2 = "arith.constant"() <{value = 7 : i32}> : () -> i32
    %3 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %0) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %5 = "arith.subi"(%4, %1) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
    %6 = "arith.cmpi"(%5, %2) <{predicate = 0 : i64}> : (i32, i32) -> i1
    %7 = "scf.if"(%6) ({
      %8 = "arith.addi"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%8) : (i32) -> ()
    }, {
      %9 = "arith.subi"(%5, %2) <{overflowFlags = #arith_overflownone}> : (i32, i32) -> i32
      "scf.yield"(%9) : (i32) -> ()
    }) : (i1) -> i32
    "func.return"(%7) : (i32) -> ()
  }) : () -> ()
}) : () -> ()