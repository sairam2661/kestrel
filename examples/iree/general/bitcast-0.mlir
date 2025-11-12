"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x4xf32>) -> tensor<4x4xi32>, sym_name = "static_tensor_bitcast", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4x4xf32>):
    %0 = "tensor.bitcast"(%arg0) : (tensor<4x4xf32>) -> tensor<4x4xi32>
    "util.return"(%0) : (tensor<4x4xi32>) -> ()
  }) : () -> ()
}) : () -> ()

