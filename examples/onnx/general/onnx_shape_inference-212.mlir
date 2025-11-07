"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x30xf32>, tensor<30xi64>) -> tensor<*xf32>, sym_name = "test_reversesequence_1"}> ({
  ^bb0(%arg0: tensor<10x30xf32>, %arg1: tensor<30xi64>):
    %0 = "onnx.ReverseSequence"(%arg0, %arg1) {batch_axis = 1 : si64, time_axis = 0 : si64} : (tensor<10x30xf32>, tensor<30xi64>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

