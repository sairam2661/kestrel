"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettensor4xi16, ui8) -> (f32, tensor<4xi16>), sym_name = "mixed_dialects"}> ({
  ^bb0(%arg0: !secretsecrettensor4xi16, %arg1: ui8):
    %0 = "arith.constant"() <{value = 0 : ui8}> : () -> ui8
    %1 = "arith.cmpi"(%arg1, %0) <{predicate = "eq"}> : (ui8, ui8) -> i1
    %2 = "arith.select"(%1, %arg0, %arg0) : (i1, !secretsecrettensor4xi16, !secretsecrettensor4xi16) -> !secretsecrettensor4xi16
    %3 = "secret.generic"(%2) ({
    ^bb0(%arg2: tensor<4xi16>):
      %4 = "arith.addi"(%arg2, %arg2) <{overflowFlags = #arithoverflownone}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
      "secret.yield"(%4) : (tensor<4xi16>) -> ()
    }) : (!secretsecrettensor4xi16) -> !secretsecrettensor4xi16
    %5 = "scf.for"(%0, %0, %arg1) ({
    ^bb0(%iv: ui8, %update_iv: ui8):
      %6 = "arith.addi"(%iv, %update_iv) <{overflowFlags = #arithoverflownone}> : (ui8, ui8) -> ui8
      "scf.yield"(%6) : (ui8) -> ()
    }) : (ui8, ui8) -> ui8
    %7 = "tensor.extract"(%3, %5) : (tensor<4xi16>, ui8) -> i16
    %8 = "arith.constant"() <{value = 1.0 : f32}> : () -> f32
    %9 = "arith.mulf"(%7, %8) <{overflowFlags = #arithoverflownone}> : (i16, f32) -> f32
    "func.return"(%9, %3) : (f32, !secretsecrettensor4xi16) -> ()
  }) : () -> ()
}) : () -> ()