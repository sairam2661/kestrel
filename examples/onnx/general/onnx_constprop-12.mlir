"builtin.module"() ({
  "func.func"() <{function_type = (tensor<3xi32>) -> tensor<3xi32>, sym_name = "test_add_zeros"}> ({
  ^bb0(%arg0: tensor<3xi32>):
    %0 = "onnx.Constant"() {value = dense<0> : tensor<3xi32>} : () -> tensor<3xi32>
    %1 = "onnx.Add"(%arg0, %0) : (tensor<3xi32>, tensor<3xi32>) -> tensor<3xi32>
    "onnx.Return"(%1) : (tensor<3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

