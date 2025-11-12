"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecrettensor32xi32, !secretsecrettensor32xi32) -> !secretsecrettensor32xi32, sym_name = "secret_elementwise_add"}> ({
  ^bb0(%arg0: !secretsecrettensor32xi32, %arg1: !secretsecrettensor32xi32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb1(%arg2: tensor<32xi32>, %arg3: tensor<32xi32>):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (tensor<32xi32>, tensor<32xi32>) -> tensor<32xi32>
      "secret.yield"(%1) : (tensor<32xi32>) -> ()
    }) : (!secretsecrettensor32xi32, !secretsecrettensor32xi32) -> !secretsecrettensor32xi32
    "func.return"(%0) : (!secretsecrettensor32xi32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (tensor<32xf32>, tensor<32xf32>) -> tensor<32xf32>, sym_name = "float_elementwise_add"}> ({
  ^bb0(%arg4: tensor<32xf32>, %arg5: tensor<32xf32>):
    %2 = "arith.addf"(%arg4, %arg5) : (tensor<32xf32>, tensor<32xf32>) -> tensor<32xf32>
    "func.return"(%2) : (tensor<32xf32>) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (i32, i32) -> i32, sym_name = "scalar_add"}> ({
  ^bb0(%arg6: i32, %arg7: i32):
    %3 = "arith.addi"(%arg6, %arg7) <{overflowFlags = #arithoverflownone}> : (i32, i32) -> i32
    "func.return"(%3) : (i32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (f32, f32) -> f32, sym_name = "float_add"}> ({
  ^bb0(%arg8: f32, %arg9: f32):
    %4 = "arith.addf"(%arg8, %arg9) : (f32, f32) -> f32
    "func.return"(%4) : (f32) -> ()
  }) : () -> ()
}) : () -> ()