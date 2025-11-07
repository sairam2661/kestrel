"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<*xf32>, sym_name = "test_instrument_add_zlow"}> ({
  ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<10x10xf32>):
    %0 = "onnx.Add"(%arg0, %arg1) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<*xf32>
    "onnx.Return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

