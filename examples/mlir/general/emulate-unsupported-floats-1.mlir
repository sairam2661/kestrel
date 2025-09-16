"builtin.module"() ({
  "func.func"() <{function_type = (bf16, bf16, bf16) -> i1, sym_name = "chained"}> ({
  ^bb0(%arg0: bf16, %arg1: bf16, %arg2: bf16):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (bf16, bf16) -> bf16
    %1 = "arith.mulf"(%0, %arg2) <{fastmath = #arith.fastmath<none>}> : (bf16, bf16) -> bf16
    %2 = "arith.cmpf"(%0, %1) <{fastmath = #arith.fastmath<none>, predicate = 5 : i64}> : (bf16, bf16) -> i1
    "func.return"(%2) : (i1) -> ()
  }) : () -> ()
}) : () -> ()

