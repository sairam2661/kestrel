"builtin.module"() ({
  "func.func"() <{function_type = (bf16, bf16) -> bf16, sym_name = "addf_bf16"}> ({
  ^bb0(%arg0: bf16, %arg1: bf16):
    %0 = "arith.addf"(%arg0, %arg1) <{fastmath = #arith.fastmath<none>}> : (bf16, bf16) -> bf16
    "func.return"(%0) : (bf16) -> ()
  }) : () -> ()
}) : () -> ()

