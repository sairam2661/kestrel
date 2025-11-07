"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256x?xi64>) -> tensor<2xi64>, sym_name = "test_shape_to_dim_negative_axis"}> ({
  ^bb0(%arg0: tensor<?x256x?xi64>):
    %0 = "onnx.Shape"(%arg0) {end = 3 : si64, start = -2 : si64} : (tensor<?x256x?xi64>) -> tensor<2xi64>
    "onnx.Return"(%0) : (tensor<2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

