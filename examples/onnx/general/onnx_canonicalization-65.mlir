"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x30xf32>) -> tensor<?x?x30xf32>, sym_name = "test_loop_derive_max_trip_count"}> ({
  ^bb0(%arg0: tensor<?x30xf32>):
    %0 = "onnx.Constant"() {value = dense<9223372036854775807> : tensor<i64>} : () -> tensor<i64>
    %1 = "onnx.Constant"() {value = dense<true> : tensor<i1>} : () -> tensor<i1>
    %2 = "onnx.Constant"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %3 = "onnx.Constant"() {value = dense<30> : tensor<i32>} : () -> tensor<i32>
    %4:4 = "onnx.Loop"(%0, %1, %2, %3, %arg0) ({
    ^bb0(%arg1: tensor<i64>, %arg2: tensor<i1>, %arg3: tensor<i32>, %arg4: tensor<i32>, %arg5: tensor<?x30xf32>):
      %5 = "onnx.Constant"() {value = dense<4> : tensor<i32>} : () -> tensor<i32>
      %6 = "onnx.Add"(%arg3, %5) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %7 = "onnx.Relu"(%arg5) : (tensor<?x30xf32>) -> tensor<?x30xf32>
      %8 = "onnx.Less"(%6, %arg4) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "onnx.Yield"(%8, %6, %arg4, %7) : (tensor<i1>, tensor<i32>, tensor<i32>, tensor<?x30xf32>) -> ()
    }) : (tensor<i64>, tensor<i1>, tensor<i32>, tensor<i32>, tensor<?x30xf32>) -> (tensor<i32>, tensor<i32>, tensor<?x30xf32>, tensor<?x?x30xf32>)
    "onnx.Return"(%4#3) : (tensor<?x?x30xf32>) -> ()
  }) : () -> ()
}) : () -> ()

