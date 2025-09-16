"builtin.module"() ({
  "func.func"() <{function_type = (i16) -> f16, sym_name = "bitcastChain"}> ({
  ^bb0(%arg0: i16):
    %0 = "arith.bitcast"(%arg0) : (i16) -> bf16
    %1 = "arith.bitcast"(%0) : (bf16) -> f16
    "func.return"(%1) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

