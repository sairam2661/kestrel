"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi1>, tensor<1xi32>, tensor<4xi32>) -> (), sym_name = "test_select_i32"}> ({
  ^bb0(%arg0: tensor<4xi1>, %arg1: tensor<1xi32>, %arg2: tensor<4xi32>):
    %0 = "tosa.select"(%arg0, %arg1, %arg2) : (tensor<4xi1>, tensor<1xi32>, tensor<4xi32>) -> tensor<*xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

