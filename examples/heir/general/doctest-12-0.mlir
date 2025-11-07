"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>, sym_name = "main"}> ({
  ^bb0(%arg0: !secret.secret<tensor<32xi16>>, %arg1: !secret.secret<index>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<32xi16>, %arg3: index):
      %1 = "tensor.extract"(%arg2, %arg3) : (tensor<32xi16>, index) -> i16
      "secret.yield"(%1) : (i16) -> ()
    }) : (!secret.secret<tensor<32xi16>>, !secret.secret<index>) -> !secret.secret<i16>
    "func.return"(%0) : (!secret.secret<i16>) -> ()
  }) : () -> ()
}) : () -> ()

