"builtin.module"() ({
  "func.func"() <{function_type = (i1) -> i1, sym_name = "fold_trunci"}> ({
  ^bb0(%arg0: i1):
    %0 = "arith.extui"(%arg0) : (i1) -> i8
    %1 = "arith.trunci"(%0) <{overflowFlags = #arith.overflow<none>}> : (i8) -> i1
    "func.return"(%1) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

