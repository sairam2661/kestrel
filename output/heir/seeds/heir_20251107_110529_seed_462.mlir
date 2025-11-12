"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>, tensor<2x3xi8>) -> tensor<2x3xi8>, sym_name = "tensor_concat_fuzz"}> ({
  ^bb0(%arg0: tensor<2x3xi8>, %arg1: tensor<2x3xi8>):
    %concat_dim = "arith.constant"() <{value = 1 : index}> : () -> index
    %0 = "tensor.concat"(%arg0, %arg1, %concat_dim) : (tensor<2x3xi8>, tensor<2x3xi8>, index) -> tensor<2x3xi8>
    "func.return"(%0) : (tensor<2x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()