"builtin.module"() ({
  "util.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "tensorCloneScalar", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "flow.tensor.clone"(%arg0) : (tensor<f32>) -> tensor<f32>
    "util.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

