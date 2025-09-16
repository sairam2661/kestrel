"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>) -> tensor<*xf32>, sym_name = "test_return"}> ({
  ^bb0(%arg0: tensor<4xf32>):
    %0 = "tosa.log"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

