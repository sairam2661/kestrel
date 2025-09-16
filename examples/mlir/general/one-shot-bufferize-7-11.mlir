"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xi32>) -> tensor<*xi32>, sym_name = "from_unranked_to_unranked"}> ({
  ^bb0(%arg0: tensor<*xi32>):
    %0 = "tensor.cast"(%arg0) : (tensor<*xi32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

