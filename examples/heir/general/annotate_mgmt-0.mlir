"builtin.module"() ({
  "func.func"() <{function_type = (!secret.secret<tensor<8xi8>>) -> !secret.secret<tensor<8xi8>>, sym_name = "main"}> ({
  ^bb0(%arg0: !secret.secret<tensor<8xi8>>):
    %0 = "secret.generic"(%arg0) ({
    ^bb0(%arg1: tensor<8xi8>):
      %1 = "mgmt.modreduce"(%arg1) : (tensor<8xi8>) -> tensor<8xi8>
      "secret.yield"(%1) : (tensor<8xi8>) -> ()
    }) : (!secret.secret<tensor<8xi8>>) -> !secret.secret<tensor<8xi8>>
    "func.return"(%0) : (!secret.secret<tensor<8xi8>>) -> ()
  }) : () -> ()
}) : () -> ()

