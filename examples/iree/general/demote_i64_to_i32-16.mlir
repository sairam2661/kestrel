"builtin.module"() ({
  "util.func"() <{function_type = (i64) -> i32, sym_name = "arith.trunci", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg2: i64):
    %2 = "arith.trunci"(%arg2) <{overflowFlags = #arith.overflow<none>}> : (i64) -> i32
    "util.return"(%2) : (i32) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (i32) -> i64, sym_name = "arith.extui", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg1: i32):
    %1 = "arith.extui"(%arg1) : (i32) -> i64
    "util.return"(%1) : (i64) -> ()
  }) : () -> ()
  "util.func"() <{function_type = (i32) -> i64, sym_name = "arith.extsi", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.extsi"(%arg0) : (i32) -> i64
    "util.return"(%0) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

