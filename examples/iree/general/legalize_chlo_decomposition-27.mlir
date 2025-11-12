"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f64>) -> tensor<f64>, sym_name = "lgamma_f64"}> ({
  ^bb0(%arg0: tensor<f64>):
    %0 = "chlo.lgamma"(%arg0) : (tensor<f64>) -> tensor<f64>
    "func.return"(%0) : (tensor<f64>) -> ()
  }) : () -> ()
}) : () -> ()

