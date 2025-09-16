"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xi32>) -> tensor<*xi32>, sym_name = "tensor_with_unknown_rank"}> ({
  ^bb0(%arg0: tensor<*xi32>):
    %0 = "tosa.abs"(%arg0) : (tensor<*xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

