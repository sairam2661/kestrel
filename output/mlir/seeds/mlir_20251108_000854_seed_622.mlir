"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>, sym_name = "bitwise_xor_tensors"}> ({
  ^bb0(%arg0: tensor<2x2xi8>, %arg1: tensor<2x2xi8>):
    %0 = "arith.xor"(%arg0, %arg1) : (tensor<2x2xi8>, tensor<2x2xi8>) -> tensor<2x2xi8>
    "func.return"(%0) : (tensor<2x2xi8>) -> ()
  }) : () -> ()
}) : () -> ()