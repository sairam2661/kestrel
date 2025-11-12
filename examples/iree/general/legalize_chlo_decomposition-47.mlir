"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "tan_f32"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "chlo.tan"(%arg0) : (tensor<f32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

