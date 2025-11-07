"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<8xi16>) -> tensor<8xi16>, sym_name = "add"}> ({
  ^bb0(%arg0: tensor<8xi16>):
    %0 = "arith.addi"(%arg0, %arg0) <{overflowFlags = #arith.overflow<none>}> : (tensor<8xi16>, tensor<8xi16>) -> tensor<8xi16>
    "func.return"(%0) : (tensor<8xi16>) -> ()
  }) : () -> ()
}) : () -> ()

