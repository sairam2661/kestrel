"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<?xi32>, sym_name = "test_loop_tiny_yolo"}> ({
    %0 = "onnx.Constant"() {value = dense<7> : tensor<i64>} : () -> tensor<i64>
    %1 = "onnx.Constant"() {value = dense<true> : tensor<i1>} : () -> tensor<i1>
    %2 = "onnx.Constant"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %3:2 = "onnx.Loop"(%0, %1, %2) ({
    ^bb0(%arg0: tensor<i64>, %arg1: tensor<i1>, %arg2: tensor<i32>):
      %4 = "onnx.Constant"() {value = dense<1> : tensor<i32>} : () -> tensor<i32>
      %5 = "onnx.Add"(%arg2, %4) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      "onnx.Yield"(%arg1, %5, %arg2) : (tensor<i1>, tensor<i32>, tensor<i32>) -> ()
    }) : (tensor<i64>, tensor<i1>, tensor<i32>) -> (tensor<i32>, tensor<?xi32>)
    "func.return"(%3#1) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()

