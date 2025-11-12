"builtin.module"() ({
  "func.func"() <{function_type = (bf16) -> bf16, sym_name = "bf16_constant"}> ({
  ^bb0(%arg0: bf16):
    %0 = "arith.constant"() <{value = 1.000000e+00 : bf16}> : () -> bf16
    "func.return"(%0) : (bf16) -> ()
  }) : () -> ()
}) : () -> ()

