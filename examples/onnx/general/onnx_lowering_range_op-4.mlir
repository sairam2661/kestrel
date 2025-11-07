"builtin.module"() ({
  "func.func"() <{function_type = (tensor<i32>, tensor<i32>, tensor<i32>) -> tensor<*xi32>, sym_name = "test_range_dynamic_i32"}> ({
  ^bb0(%arg0: tensor<i32>, %arg1: tensor<i32>, %arg2: tensor<i32>):
    %0 = "onnx.Range"(%arg0, %arg1, %arg2) : (tensor<i32>, tensor<i32>, tensor<i32>) -> tensor<*xi32>
    "func.return"(%0) : (tensor<*xi32>) -> ()
  }) : () -> ()
}) : () -> ()

