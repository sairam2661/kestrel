"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (i32) -> (i32, i32), sym_name = "complex_op_chain"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.constant"() <{value = 42 : i32}> : () -> i32
    %1 = "arith.muli"(%arg0, %0) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
    %2 = "arith.addi"(%1, %1) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
    %3 = "arith.subi"(%2, %1) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
    %4 = "arith.muli"(%3, %1) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
    %5 = "scf.for"(%arg0, %arg0, %3) ({
    ^bb1(%iv: i32):
      %6 = "arith.addi"(%iv, %1) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i32
      "scf.yield"(%6) : (i32) -> ()
    }) : (i32) -> (i32)
    %7 = "arith.cmpi"("eq", %5, %arg0) <{overflowFlags = #arith_overflow_flags_overflow}> : (i32, i32) -> i1
    %8 = "arith.select"(%7, %5, %3) : (i1, i32, i32) -> i32
    "func.return"(%0, %8) : (i32, i32) -> ()
  }) : () -> ()
}) : () -> ()