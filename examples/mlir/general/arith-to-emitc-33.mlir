"builtin.module"() ({
  "func.func"() <{function_type = (i32) -> i1, sym_name = "arith_trunci_to_i1"}> ({
  ^bb0(%arg0: i32):
    %0 = "arith.trunci"(%arg0) <{overflowFlags = #arith.overflow<none>}> : (i32) -> i1
    "func.return"(%0) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

