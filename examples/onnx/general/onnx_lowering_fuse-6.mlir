"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5xf32>) -> tensor<*xf32>, sym_name = "fuse_element_14"}> ({
  ^bb0(%arg0: tensor<5xf32>):
    %0 = "onnx.Constant"() {value = dense<[1.000000e+00, 2.000000e+00, 3.000000e+00, 4.000000e+00, 5.000000e+00]> : tensor<5xf32>} : () -> tensor<5xf32>
    %1 = "onnx.Sqrt"(%arg0) : (tensor<5xf32>) -> tensor<?xf32>
    %2 = "onnx.Add"(%1, %0) : (tensor<?xf32>, tensor<5xf32>) -> tensor<*xf32>
    "func.return"(%2) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

