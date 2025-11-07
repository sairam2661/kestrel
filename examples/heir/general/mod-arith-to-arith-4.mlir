"builtin.module"() ({
  "func.func"() <{function_type = (i10) -> i10, sym_name = "test_lower_barrett_reduce_int"}> ({
  ^bb0(%arg0: i10):
    %0 = "mod_arith.barrett_reduce"(%arg0) <{modulus = 17 : i64}> : (i10) -> i10
    "func.return"(%0) : (i10) -> ()
  }) : () -> ()
}) : () -> ()

