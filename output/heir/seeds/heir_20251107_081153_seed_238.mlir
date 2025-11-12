"builtin.module"() ({
  "func.func"() <{function_type = (!secretsecretvec4xi32, !secretsecretvec4xi32) -> !secretsecretvec4xi32, sym_name = "elementwise_product"}> ({
  ^bb0(%arg0: !secretsecretvec4xi32, %arg1: !secretsecretvec4xi32):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: vector<4xi32>, %arg3: vector<4xi32>):
      %1 = "arith.mulf"(%arg2, %arg3) <{overflowFlags = #arithoverflownone}> : (vector<4xi32>, vector<4xi32>) -> vector<4xi32>
      "secret.yield"(%1) : (vector<4xi32>) -> ()
    }) : (!secretsecretvec4xi32, !secretsecretvec4xi32) -> !secretsecretvec4xi32
    "func.return"(%0) : (!secretsecretvec4xi32) -> ()
  }) : () -> ()
}) : () -> ()