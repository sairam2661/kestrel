"builtin.module"() ({
  "util.func"() <{function_type = (tensor<?xf32>) -> tensor<4xf32>, sym_name = "dynamic_tensor_cast_to_static", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<?xf32>):
    %0 = "tensor.cast"(%arg0) : (tensor<?xf32>) -> tensor<4xf32>
    "util.return"(%0) : (tensor<4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

