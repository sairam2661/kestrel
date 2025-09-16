"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor.cast_chain_regain"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "tensor.cast"(%arg0) : (tensor<4xi32>) -> tensor<?xi32>
    %1 = "tensor.cast"(%0) : (tensor<?xi32>) -> tensor<4xi32>
    "func.return"(%1) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

