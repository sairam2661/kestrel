"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi32>) -> (), sym_name = "test_static_argmax"}> ({
  ^bb0(%arg0: tensor<2x3xi32>):
    %0 = "tosa.argmax"(%arg0) <{axis = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<2x3xi32>) -> tensor<?xi32>
    %1 = "tosa.argmax"(%arg0) <{axis = 1 : i32, nan_mode = "PROPAGATE"}> : (tensor<2x3xi32>) -> tensor<?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

