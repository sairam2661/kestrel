"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x4xf32>) -> tensor<?x?xf32>, sym_name = "static_tensor_cast_to_dynamic", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4x4xf32>):
    %0 = "tensor.cast"(%arg0) : (tensor<4x4xf32>) -> tensor<?x?xf32>
    "util.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

