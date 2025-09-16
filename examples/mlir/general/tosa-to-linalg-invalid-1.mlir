"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xi8>) -> tensor<*xi8>, sym_name = "tensor_with_unknown_rank"}> ({
  ^bb0(%arg0: tensor<*xi8>):
    %0 = "tosa.abs"(%arg0) : (tensor<*xi8>) -> tensor<*xi8>
    "func.return"(%0) : (tensor<*xi8>) -> ()
  }) : () -> ()
}) : () -> ()

