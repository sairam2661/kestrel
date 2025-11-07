"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi64>) -> tensor<*xi64>, sym_name = "unique_with_counts"}> ({
  ^bb0(%arg0: tensor<2x2xi64>):
    %0:4 = "onnx.Unique"(%arg0) {axis = 1 : si64, sorted = 1 : si64} : (tensor<2x2xi64>) -> (tensor<*xi64>, none, none, tensor<*xi64>)
    "func.return"(%0#0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

