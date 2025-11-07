"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi64>, tensor<2xi64>) -> tensor<2xi64>, sym_name = "test_gather_elements"}> ({
  ^bb0(%arg0: tensor<4xi64>, %arg1: tensor<2xi64>):
    %0 = "onnx.GatherElements"(%arg0, %arg1) {axis = 0 : si64} : (tensor<4xi64>, tensor<2xi64>) -> tensor<2xi64>
    "func.return"(%0) : (tensor<2xi64>) -> ()
  }) : () -> ()
}) : () -> ()

