"builtin.module"() ({
  "util.func"() <{function_type = (tensor<4x4xf32>) -> tensor<4x4xf32>, sym_name = "tensorClone", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<4x4xf32>):
    %0 = "flow.tensor.clone"(%arg0) : (tensor<4x4xf32>) -> tensor<4x4xf32>
    "util.return"(%0) : (tensor<4x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

