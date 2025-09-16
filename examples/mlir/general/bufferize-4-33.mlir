"builtin.module"() ({
  "func.func"() <{function_type = (f32) -> tensor<10x2x4xf32>, sym_name = "tensor.splat"}> ({
  ^bb0(%arg0: f32):
    %0 = "tensor.splat"(%arg0) : (f32) -> tensor<10x2x4xf32>
    "func.return"(%0) : (tensor<10x2x4xf32>) -> ()
  }) : () -> ()
}) : () -> ()

