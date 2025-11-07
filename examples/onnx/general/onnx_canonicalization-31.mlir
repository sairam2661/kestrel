"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x4x8x16xf32>) -> tensor<i64>, sym_name = "test_size1"}> ({
  ^bb0(%arg0: tensor<2x4x8x16xf32>):
    %0 = "onnx.Size"(%arg0) : (tensor<2x4x8x16xf32>) -> tensor<i64>
    "onnx.Return"(%0) : (tensor<i64>) -> ()
  }) : () -> ()
}) : () -> ()

