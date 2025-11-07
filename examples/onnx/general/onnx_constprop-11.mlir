"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>, tensor<i32>) -> (tensor<i32>, tensor<i32>), sym_name = "test_add_const_associative2_2uses"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>, %arg2: tensor<i32>):
    %0 = "onnx.Constant"() {value = dense<1> : tensor<i32>} : () -> tensor<i32>
    %1 = "onnx.Add"(%arg0, %0) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %2 = "onnx.Add"(%1, %arg1) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    %3 = "onnx.Add"(%1, %arg2) : (tensor<i32>, tensor<i32>) -> tensor<i32>
    "onnx.Return"(%2, %3) : (tensor<i32>, tensor<i32>) -> ()
  }) : () -> ()
}) : () -> ()

