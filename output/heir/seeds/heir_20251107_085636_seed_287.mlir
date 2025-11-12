"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i32, i32) -> i32, sym_name = "complex_arithmetic"}> ({
  ^bb0(%arg0: i32, %arg1: i32):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %1 = "arith.mulf"(%0, %arg0) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %2 = "arith.subi"(%1, %arg1) <{overflowFlags = #arith_overflow_none}> : (i32, i32) -> i32
    %3 = "arith.cmpi"(%2, %arg0, "gt") : (i32, i32) -> i1
    %4 = "arith.select"(%3, %arg1, %arg0) <{overflowFlags = #arith_overflow_none}> : (i1, i32, i32) -> i32
    "func.return"(%4) : (i32) -> ()
  }) : () -> ()
}) : () -> ()