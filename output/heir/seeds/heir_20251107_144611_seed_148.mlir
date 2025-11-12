"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>, sym_name = "secret_tensor_add"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<4xi32>):
    %0 = "secret.generic"(%arg0, %arg1) ({
    ^bb0(%arg2: tensor<4xi32>, %arg3: tensor<4xi32>):
      %1 = "arith.addi"(%arg2, %arg3) <{overflowFlags = #arith_overflow_none}> : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
      "secret.yield"(%1) : (tensor<4xi32>) -> ()
    }) : (tensor<4xi32>, tensor<4xi32>) -> tensor<4xi32>
    "func.return"(%0) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()