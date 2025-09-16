"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>) -> tensor<4xi32>, sym_name = "tensor_bitcast_chain_nop"}> ({
  ^bb0(%arg0: tensor<4xi32>):
    %0 = "tensor.bitcast"(%arg0) : (tensor<4xi32>) -> tensor<4xui32>
    %1 = "tensor.bitcast"(%0) : (tensor<4xui32>) -> tensor<4xi32>
    "func.return"(%1) : (tensor<4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

