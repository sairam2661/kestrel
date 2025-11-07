"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}, {secret.secret}], function_type = (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>, sym_name = "add"}> ({
  ^bb0(%arg0: tensor<4xi16>, %arg1: tensor<4xi16>):
    %0 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %1 = "arith.muli"(%0, %arg1) <{overflowFlags = #arith.overflow<none>}> : (tensor<4xi16>, tensor<4xi16>) -> tensor<4xi16>
    %2 = "arith.constant"() <{value = 1 : index}> : () -> index
    %3 = "tensor_ext.rotate"(%1, %2) : (tensor<4xi16>, index) -> tensor<4xi16>
    "func.return"(%3) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()

