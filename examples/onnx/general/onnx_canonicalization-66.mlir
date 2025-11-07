"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x30xf32>, tensor<i32>) -> tensor<?x?x30xf32>, sym_name = "test_loop_derive_max_trip_count_non_constant_ub"}> ({
  ^bb0(%arg0: tensor<?x30xf32>, %arg1: tensor<i32>):
    %0 = "onnx.Constant"() {value = dense<9223372036854775807> : tensor<i64>} : () -> tensor<i64>
    %1 = "onnx.Constant"() {value = dense<true> : tensor<i1>} : () -> tensor<i1>
    %2 = "onnx.Constant"() {value = dense<0> : tensor<i32>} : () -> tensor<i32>
    %3:4 = "onnx.Loop"(%0, %1, %2, %arg1, %arg0) ({
    ^bb0(%arg2: tensor<i64>, %arg3: tensor<i1>, %arg4: tensor<i32>, %arg5: tensor<i32>, %arg6: tensor<?x30xf32>):
      %4 = "onnx.Constant"() {value = dense<1> : tensor<i32>} : () -> tensor<i32>
      %5 = "onnx.Add"(%arg4, %4) : (tensor<i32>, tensor<i32>) -> tensor<i32>
      %6 = "onnx.Relu"(%arg6) : (tensor<?x30xf32>) -> tensor<?x30xf32>
      %7 = "onnx.Less"(%5, %arg5) : (tensor<i32>, tensor<i32>) -> tensor<i1>
      "onnx.Yield"(%7, %5, %arg5, %6) : (tensor<i1>, tensor<i32>, tensor<i32>, tensor<?x30xf32>) -> ()
    }) : (tensor<i64>, tensor<i1>, tensor<i32>, tensor<i32>, tensor<?x30xf32>) -> (tensor<i32>, tensor<i32>, tensor<?x30xf32>, tensor<?x?x30xf32>)
    "onnx.Return"(%3#3) : (tensor<?x?x30xf32>) -> ()
  }) : () -> ()
}) : () -> ()

