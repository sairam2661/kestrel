"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>, sym_name = "test_negate_non_const_zps"}> ({
  ^bb0(%arg0: tensor<1xf32>, %arg1: tensor<1xf32>, %arg2: tensor<1xf32>):
    %0 = "tosa.negate"(%arg0, %arg1, %arg2) : (tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    "func.return"(%0) : (tensor<1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

