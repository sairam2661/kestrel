"builtin.module"() ({
  "func.func"() <{function_type = (tensor<64xi8>, tensor<64xi8>) -> tensor<64xi8>, sym_name = "xor_tensor"}> ({
  ^bb0(%arg0: tensor<64xi8>, %arg1: tensor<64xi8>):
    %0 = "arith.xori"(%arg0, %arg1) : (tensor<64xi8>, tensor<64xi8>) -> tensor<64xi8>
    "func.return"(%0) : (tensor<64xi8>) -> ()
  }) : () -> ()
}) : () -> ()