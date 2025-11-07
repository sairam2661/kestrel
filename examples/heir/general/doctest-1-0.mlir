"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<tensor<32xi16>>, sym_name = "main"}> ({
  ^bb0(%arg0: !secret.secret<tensor<32xi16>>, %arg1: !secret.secret<index>):
    %0 = "arith.constant"() <{value = 0 : i16}> : () -> i16
    %1 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<32xi16>, %arg3: index):
      %2 = "tensor.insert"(%0, %arg2, %arg3) : (i16, tensor<32xi16>, index) -> tensor<32xi16>
      "secret.yield"(%2) : (tensor<32xi16>) -> ()
    }) : (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<tensor<32xi16>>
    "func.return"(%1) : (!secret.secret<tensor<32xi16>>) -> ()
  }) : () -> ()
}) : () -> ()

