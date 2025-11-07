"builtin.module"() ({
  "func.func"() <{function_type = (tensor<32769x10xf32>) -> tensor<*xf32>, sym_name = "test_exceed_limit_exp"}> ({
  ^bb0(%arg0: tensor<32769x10xf32>):
    %0 = "onnx.Exp"(%arg0) : (tensor<32769x10xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

