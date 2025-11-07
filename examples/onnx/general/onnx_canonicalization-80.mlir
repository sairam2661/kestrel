"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x256xi64>) -> tensor<1xi64>, sym_name = "test_dim_to_constant"}> ({
  ^bb0(%arg0: tensor<?x256xi64>):
    %0 = "onnx.Dim"(%arg0) {axis = 1 : si64} : (tensor<?x256xi64>) -> tensor<1xi64>
    "onnx.Return"(%0) : (tensor<1xi64>) -> ()
  }) : () -> ()
}) : () -> ()

