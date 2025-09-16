"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i2, sym_name = "fold_trunci"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.extui"(%arg0) : (i1) -> i8
    %1 = "arith.trunci"(%0) <{overflowFlags = #arith.overflow<none>}> : (i8) -> i2
    "func.return"(%1) : (i2) -> ()
  }) : () -> ()
}) : () -> ()

