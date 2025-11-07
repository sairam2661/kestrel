"builtin.module"() ({
  "func.func"() <{function_type = (tensor<*xf32>) -> (), sym_name = "test_splitV11"}> ({
  ^bb0(%arg0: tensor<*xf32>):
    %0 = "onnx.SplitV11"(%arg0) {axis = 1 : si64, split = [1]} : (tensor<*xf32>) -> tensor<*xf32>
    "onnx.Return"() : () -> ()
  }) : () -> ()
}) : () -> ()

