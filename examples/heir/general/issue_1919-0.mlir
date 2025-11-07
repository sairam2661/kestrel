"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>, sym_name = "foo"}> ({
  ^bb0(%arg0: tensor<1024xi16>, %arg1: tensor<1024xi16>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
    %1 = "arith.subi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
    %2 = "arith.muli"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (tensor<1024xi16>, tensor<1024xi16>) -> tensor<1024xi16>
    "func.return"(%2) : (tensor<1024xi16>) -> ()
  }) : () -> ()
}) : () -> ()

