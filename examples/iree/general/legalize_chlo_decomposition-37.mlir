"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<f32>, sym_name = "sinh_f32"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "chlo.sinh"(%arg0) : (tensor<f32>) -> tensor<f32>
    "func.return"(%0) : (tensor<f32>) -> ()
  }) : () -> ()
}) : () -> ()

