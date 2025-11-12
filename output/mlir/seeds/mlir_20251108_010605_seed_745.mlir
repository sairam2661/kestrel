"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x7xi8>, tensor<5x7xi8>) -> tensor<5x7xi8>, sym_name = "tensor_xor_example"}> ({
  ^bb0(%arg0: tensor<5x7xi8>, %arg1: tensor<5x7xi8>):
    %0 = "tosa.logical_xor"(%arg0, %arg1) : (tensor<5x7xi8>, tensor<5x7xi8>) -> tensor<5x7xi8>
    "func.return"(%0) : (tensor<5x7xi8>) -> ()
  }) : () -> ()
}) : () -> ()