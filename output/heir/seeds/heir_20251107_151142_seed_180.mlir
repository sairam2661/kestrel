"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i8) -> i8, sym_name = "stress_test"}> ({
  ^bb0(%arg0: i8):
    %0 = "arith.constant"() <{value = 255 : i8}> : () -> i8
    %1 = "arith.addi"(%arg0, %0) <{overflowFlags = #arith_overflow_rust_overflow}> : (i8, i8) -> i8
    %2 = "arith.cmpi"(%1, %0, "slt") : (i8, i8) -> i1
    %3 = "arith.select"(%2, %1, %0) : (i1, i8, i8) -> i8
    %4 = "arith.subi"(%0, %3) <{overflowFlags = #arith_overflow_rust_overflow}> : (i8, i8) -> i8
    %5 = "arith.muli"(%4, %arg0) <{overflowFlags = #arith_overflow_rust_overflow}> : (i8, i8) -> i8
    %6 = "arith.addi"(%5, %4) <{overflowFlags = #arith_overflow_rust_overflow}> : (i8, i8) -> i8
    "func.return"(%6) : (i8) -> ()
  }) : () -> ()
}) : () -> ()