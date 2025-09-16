"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xf32>, tensor<13x26xi32>) -> tensor<*xf32>, sym_name = "unranked_gather"}> ({
  ^bb0(%arg0: tensor<13x21x3xf32>, %arg1: tensor<13x26xi32>):
    %0 = "tosa.gather"(%arg0, %arg1) : (tensor<13x21x3xf32>, tensor<13x26xi32>) -> tensor<*xf32>
    "func.return"(%0) : (tensor<*xf32>) -> ()
  }) : () -> ()
}) : () -> ()

