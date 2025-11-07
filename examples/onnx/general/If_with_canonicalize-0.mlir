"builtin.module"() ({
  "func.func"() <{function_type = (tensor<f32>) -> tensor<i32>, sym_name = "test_if_sign"}> ({
  ^bb0(%arg0: tensor<f32>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %1 = "onnx.Constant"() {value = dense<1> : tensor<i32>} : () -> tensor<i32>
    %2 = "onnx.Constant"() {value = dense<-1> : tensor<i32>} : () -> tensor<i32>
    %3 = "onnx.Constant"() {value = dense<0.000000e+00> : tensor<f32>} : () -> tensor<f32>
    %4 = "onnx.Less"(%arg0, %3) : (tensor<f32>, tensor<f32>) -> tensor<i1>
    %5 = "onnx.If"(%4) ({
      "onnx.Yield"(%2) : (tensor<i32>) -> ()
    }, {
      %6 = "onnx.Greater"(%arg0, %3) : (tensor<f32>, tensor<f32>) -> tensor<i1>
      %7 = "onnx.If"(%6) ({
        "onnx.Yield"(%1) : (tensor<i32>) -> ()
      }, {
        "onnx.Yield"(%0) : (tensor<i32>) -> ()
      }) : (tensor<i1>) -> tensor<i32>
      "onnx.Yield"(%7) : (tensor<i32>) -> ()
    }) : (tensor<i1>) -> tensor<i32>
    "func.return"(%5) : (tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

