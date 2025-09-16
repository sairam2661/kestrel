"builtin.module"() ({
  "func.func"() <{function_type = (i16) -> i16, sym_name = "bitcastOfBitcast"}> ({
  ^bb0(%arg0: i16):
    %0 = "arith.bitcast"(%arg0) : (i16) -> f16
    %1 = "arith.bitcast"(%0) : (f16) -> bf16
    %2 = "arith.bitcast"(%1) : (bf16) -> i16
    "func.return"(%2) : (i16) -> ()
  }) : () -> ()
}) : () -> ()

