"builtin.module"() ({
  "func.func"() <{function_type = (bf16) -> bf16, sym_name = "basic_expansion"}> ({
  ^bb0(%arg0: bf16):
    %0 = "arith.constant"() <{value = 1.000000e+00 : bf16}> : () -> bf16
    %1 = "arith.addf"(%arg0, %0) <{fastmath = #arith.fastmath<none>}> : (bf16, bf16) -> bf16
    "func.return"(%1) : (bf16) -> ()
  }) : () -> ()
}) : () -> ()

