"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xi32>, tensor<1xi32>) -> tensor<13x21x1xi32>, sym_name = "test_div_broadcast"}> ({
  ^bb0(%arg0: tensor<13x21x1xi32>, %arg1: tensor<1xi32>):
    %0 = "onnx.Div"(%arg0, %arg1) : (tensor<13x21x1xi32>, tensor<1xi32>) -> tensor<13x21x1xi32>
    "func.return"(%0) : (tensor<13x21x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

