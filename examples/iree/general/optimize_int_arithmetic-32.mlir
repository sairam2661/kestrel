"builtin.module"() ({
  "util.func"() <{function_type = (i64) -> i64, sym_name = "util_align_overflow", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: i64):
    %0 = "arith.constant"() <{value = 64 : i64}> : () -> i64
    %1 = "util.align"(%arg0, %0) : (i64, i64) -> i64
    "util.return"(%1) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

