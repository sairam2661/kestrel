"builtin.module"() ({
  "func.func"() <{function_type = (tensor<21x3xf32>, tensor<13x3xf32>) -> tensor<13x3xf32>, sym_name = "test_sub_complex"}> ({
  ^bb0(%arg0: tensor<21x3xf32>, %arg1: tensor<13x3xf32>):
    %0 = "tosa.const"() <{value = dense<42.0> : tensor<21x3xf32>}> : () -> tensor<21x3xf32>
    %1 = "tosa.const"() <{value = dense<13.0> : tensor<13x3xf32>}> : () -> tensor<13x3xf32>
    %2 = "tosa.add"(%arg0, %0) : (tensor<21x3xf32>, tensor<21x3xf32>) -> tensor<21x3xf32>
    %3 = "tosa.sub"(%2, %arg1) : (tensor<21x3xf32>, tensor<13x3xf32>) -> tensor<13x3xf32>
    "func.return"(%3) : (tensor<13x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()