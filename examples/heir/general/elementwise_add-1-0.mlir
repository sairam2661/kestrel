"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<32x32xi16>>, !secret.secret<tensor<32x32xi16>>) -> !secret.secret<tensor<32x32xi16>>, sym_name = "elementwise_sum"}> ({
  ^bb0(%arg0: !secret.secret<tensor<32x32xi16>>, %arg1: !secret.secret<tensor<32x32xi16>>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<32x32xi16>, %arg3: tensor<32x32xi16>):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith.overflow<none>}> : (tensor<32x32xi16>, tensor<32x32xi16>) -> tensor<32x32xi16>
      "secret.yield"(%1) : (tensor<32x32xi16>) -> ()
    }) : (!secret.secret<tensor<32x32xi16>>, !secret.secret<tensor<32x32xi16>>) -> !secret.secret<tensor<32x32xi16>>
    "func.return"(%0) : (!secret.secret<tensor<32x32xi16>>) -> ()
  }) : () -> ()
}) : () -> ()

