"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x?xi1>, tensor<2x?xf32>, tensor<2x?xf32>) -> tensor<2x?xf32>, sym_name = "test_select_2d_one_dynamic"}> ({
  ^bb0(%arg0: tensor<2x?xi1>, %arg1: tensor<2x?xf32>, %arg2: tensor<2x?xf32>):
    %0 = "tosa.select"(%arg0, %arg1, %arg2) : (tensor<2x?xi1>, tensor<2x?xf32>, tensor<2x?xf32>) -> tensor<2x?xf32>
    "func.return"(%0) : (tensor<2x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

