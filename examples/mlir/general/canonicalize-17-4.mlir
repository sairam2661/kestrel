"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi32>) -> tensor<2xf32>, sym_name = "tensor_bitcast_chain_ok"}> ({
  ^bb0(%arg0: tensor<2xi32>):
    %0 = "tensor.bitcast"(%arg0) : (tensor<2xi32>) -> tensor<2xui32>
    %1 = "tensor.bitcast"(%0) : (tensor<2xui32>) -> tensor<2xf32>
    "func.return"(%1) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

