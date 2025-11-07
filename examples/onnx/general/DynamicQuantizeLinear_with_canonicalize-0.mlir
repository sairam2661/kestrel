"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x2xf32>) -> (tensor<?x2xui8>, tensor<f32>, tensor<ui8>), sym_name = "test_dynamic_quantize_linear"}> ({
  ^bb0(%arg0: tensor<?x2xf32>):
    %0:3 = "onnx.DynamicQuantizeLinear"(%arg0) : (tensor<?x2xf32>) -> (tensor<?x2xui8>, tensor<f32>, tensor<ui8>)
    "func.return"(%0#0, %0#1, %0#2) : (tensor<?x2xui8>, tensor<f32>, tensor<ui8>) -> ()
  }) : () -> ()
}) : () -> ()

