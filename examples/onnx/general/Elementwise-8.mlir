"builtin.module"() ({
  "func.func"() <{function_type = (tensor<10x10xi64>, tensor<10x10xi64>) -> tensor<*xi64>, sym_name = "test_signed_int_mod", sym_visibility = "private"}> ({
  ^bb0(%arg0: tensor<10x10xi64>, %arg1: tensor<10x10xi64>):
    %0 = "onnx.Mod"(%arg0, %arg1) {fmod = 0 : si64} : (tensor<10x10xi64>, tensor<10x10xi64>) -> tensor<*xi64>
    "func.return"(%0) : (tensor<*xi64>) -> ()
  }) : () -> ()
}) : () -> ()

