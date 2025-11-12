"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>, sym_name = "tensor_subtract_and_add"}> ({
  ^bb0(%arg0: tensor<3xi8>, %arg1: tensor<3xi8>):
    %0 = "arith.subi"(%arg0, %arg1) : (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
    %1 = "arith.addi"(%0, %arg1) : (tensor<3xi8>, tensor<3xi8>) -> tensor<3xi8>
    "func.return"(%1) : (tensor<3xi8>) -> ()
  }) : () -> ()
}) : () -> ()