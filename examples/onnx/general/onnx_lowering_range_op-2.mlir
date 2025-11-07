"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f64>, tensor<f64>, tensor<f64>) -> tensor<*xf64>, sym_name = "test_range_dynamic_f64"}> ({
  ^bb0(%arg0: tensor<f64>, %arg1: tensor<f64>, %arg2: tensor<f64>):
    %0 = "onnx.Range"(%arg0, %arg1, %arg2) : (tensor<f64>, tensor<f64>, tensor<f64>) -> tensor<*xf64>
    "func.return"(%0) : (tensor<*xf64>) -> ()
  }) : () -> ()
}) : () -> ()

