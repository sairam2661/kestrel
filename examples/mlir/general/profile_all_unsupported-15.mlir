"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x1xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xf32>, sym_name = "test_add"}> ({
  ^bb0(%arg0: tensor<13x21x1xf32>, %arg1: tensor<13x21x3xf32>):
    %0 = "tosa.add"(%arg0, %arg1) : (tensor<13x21x1xf32>, tensor<13x21x3xf32>) -> tensor<13x21x3xf32>
    "func.return"(%0) : (tensor<13x21x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

