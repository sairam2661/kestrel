"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> tensor<2xf32>, sym_name = "tensor.cast_from_unranked"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "tensor.cast"(%arg0) : (tensor<*xf32>) -> tensor<2xf32>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

