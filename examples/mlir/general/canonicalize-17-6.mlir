"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xi32>) -> tensor<2xi32>, sym_name = "cast_values"}> ({
  ^bb0(%arg0: tensor<*xi32>):
    %0 = "tensor.cast"(%arg0) : (tensor<*xi32>) -> tensor<*xi32>
    %1 = "tensor.cast"(%0) : (tensor<*xi32>) -> tensor<2xi32>
    %2 = "tensor.cast"(%1) : (tensor<2xi32>) -> tensor<2xi32>
    "func.return"(%2) : (tensor<2xi32>) -> ()
  }) : () -> ()
}) : () -> ()

