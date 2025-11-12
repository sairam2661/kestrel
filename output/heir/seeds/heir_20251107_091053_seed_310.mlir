"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>, sym_name = "rotate_and_mix"}> ({
  ^bb0(%arg0: tensor<16xi8>, %arg1: tensor<16xi8>):
    %0 = "tensor_ext.rotate"(%arg0) <{amount = 4 : i64}> : (tensor<16xi8>) -> tensor<16xi8>
    %1 = "tensor_ext.rotate"(%arg1) <{amount = 8 : i64}> : (tensor<16xi8>) -> tensor<16xi8>
    %2 = "arith.addi"(%0, %1) : (tensor<16xi8>, tensor<16xi8>) -> tensor<16xi8>
    "func.return"(%2) : (tensor<16xi8>) -> ()
  }) : () -> ()
}) : () -> ()