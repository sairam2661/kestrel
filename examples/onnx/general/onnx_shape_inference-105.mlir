"builtin.module"() ({
  "func.func"() <{function_type = (tensor<16x?x64xf32>) -> tensor<*xf32>, sym_name = "test_split_5"}> ({
  ^bb0(%arg0: tensor<16x?x64xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.Split"(%arg0, %0) {axis = 1 : si64} : (tensor<16x?x64xf32>, none) -> (tensor<*xf32>, tensor<*xf32>)
    "onnx.Return"(%1#0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

