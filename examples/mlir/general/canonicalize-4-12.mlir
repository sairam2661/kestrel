"builtin.module"() ({
  "func.func"() <{function_type = () -> f16, sym_name = "bitcastConstantFPtoFP"}> ({
    %0 = "arith.constant"() <{value = 0.000000e+00 : bf16}> : () -> bf16
    %1 = "arith.bitcast"(%0) : (bf16) -> f16
    "func.return"(%1) : (f16) -> ()
  }) : () -> ()
}) : () -> ()

