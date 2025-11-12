"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (index) -> !secret_secret, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: index):
    %0 = "arith.constant"() <{value = 42 : index}> : () -> index
    %1 = "arith.constant"() <{value = 3 : index}> : () -> index
    %2 = "arith.cmpi"(%arg0, %1, "slt") : (index, index) -> i1
    %3 = "arith.select"(%2, %0, %arg0) : (i1, index, index) -> index
    %4 = "arith.addi"(%3, %1) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
    %5 = "arith.subi"(%4, %0) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
    %6 = "arith.mulf"(%5, %1) <{overflowFlags = #arith_overflow_none}> : (index, index) -> index
    %7 = "arith.cmpi"(%6, %0, "sgt") : (index, index) -> i1
    %8 = "arith.select"(%7, %0, %6) : (i1, index, index) -> index
    "func.return"(%8) : (!secret_secret) -> ()
  }) : () -> ()
}) : () -> ()