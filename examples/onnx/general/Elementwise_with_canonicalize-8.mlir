"builtin.module"() ({
  "func.func"() <{function_type = (tensor<6xf32>, tensor<6xf32>) -> tensor<*xf32>, sym_name = "test_mod_fp32"}> ({
  ^bb0(%arg0: tensor<6xf32>, %arg1: tensor<6xf32>):
    %0 = "onnx.Mod"(%arg0, %arg1) {fmod = 1 : si64} : (tensor<6xf32>, tensor<6xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

