"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "lgamma_f32"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "chlo.lgamma"(%arg0) : (tensor<f32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

