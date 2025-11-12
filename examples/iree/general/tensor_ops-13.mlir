"builtin.module"() ({
  "util.func"() <{function_type = (f32) -> tensor<4x4xf32>, sym_name = "tensorSplat", sym_visibility = "public", tied_operands = [-1 : index]}> ({
  ^bb0(%arg0: f32):
    %0 = "flow.tensor.splat"(%arg0) : (f32) -> tensor<4x4xf32>
    "util.return"(%0) : (tensor<4x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

