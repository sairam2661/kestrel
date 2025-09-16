"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>) -> tensor<*xf32>, sym_name = "tensor.cast_to_unranked"}> ({
  ^bb0(%arg0: tensor<2xf32>):
    %0 = "tensor.cast"(%arg0) : (tensor<2xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

