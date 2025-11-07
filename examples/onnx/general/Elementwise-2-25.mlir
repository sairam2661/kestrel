"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>, sym_name = "test_max"}> ({
  ^bb0(%arg0: tensor<10x10xf32>, %arg1: tensor<10x10xf32>):
    %0 = "onnx.Max"(%arg0, %arg1) : (tensor<10x10xf32>, tensor<10x10xf32>) -> tensor<10x10xf32>
    "func.return"(%0) : (tensor<10x10xf32>) -> ()
  }) : () -> ()
}) : () -> ()

