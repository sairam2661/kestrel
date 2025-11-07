"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x5x?x32xf32>, tensor<5x5x?x32xf32>) -> tensor<5x5x?x32xf32>, sym_name = "test_concat_dynamic_shape"}> ({
  ^bb0(%arg0: tensor<5x5x?x32xf32>, %arg1: tensor<5x5x?x32xf32>):
    %0 = "onnx.Concat"(%arg0, %arg1) {axis = 2 : si64} : (tensor<5x5x?x32xf32>, tensor<5x5x?x32xf32>) -> tensor<5x5x?x32xf32>
    "func.return"(%0) : (tensor<5x5x?x32xf32>) -> ()
  }) : () -> ()
}) : () -> ()

