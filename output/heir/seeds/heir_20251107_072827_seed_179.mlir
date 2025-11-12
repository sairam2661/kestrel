"builtin.module"() ({
  "func.func"() <{arg_attrs = [{secret.secret}], function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>, sym_name = "tensor_add_and_select"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %0 = "arith.constant"() <{value = dense<0> : tensor<16xi8>}> : () -> tensor<16xi8>
    %1 = "arith.constant"() <{value = dense<1> : tensor<16xi8>}> : () -> tensor<16xi8>
    %2 = "arith.addi"(%arg0, %arg1) <{overflowFlags = #arith_overflownone}> : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    %3 = "arith.cmpi"(%arg0, %arg1, "slt") : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi1>
    %4 = "arith.select"(%3, %2, %0) : (tensor<16xi1>, tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    "func.return"(%4) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()