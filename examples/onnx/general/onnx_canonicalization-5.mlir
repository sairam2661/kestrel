"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>) -> (tensor<10x10xf32>, none), sym_name = "test_dropout"}> ({
  ^bb0(%arg0: tensor<10x10xf32>):
    %0 = "onnx.NoValue"() {value} : () -> none
    %1:2 = "onnx.Dropout"(%arg0, %0, %0) : (tensor<10x10xf32>, none, none) -> (tensor<10x10xf32>, none)
    "onnx.Return"(%1#0, %1#1) : (tensor<10x10xf32>, none) -> ()
  }) : () -> ()
}) : () -> ()

