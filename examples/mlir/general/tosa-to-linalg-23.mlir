"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi1>, tensor<1xi1>) -> (), sym_name = "test_bool"}> ({
  ^bb0(%arg0: tensor<1xi1>, %arg1: tensor<1xi1>):
    %0 = "tosa.logical_and"(%arg0, %arg1) : (tensor<1xi1>, tensor<1xi1>) -> tensor<1xi1>
    %1 = "tosa.logical_or"(%arg0, %arg1) : (tensor<1xi1>, tensor<1xi1>) -> tensor<1xi1>
    %2 = "tosa.logical_xor"(%arg0, %arg1) : (tensor<1xi1>, tensor<1xi1>) -> tensor<1xi1>
    %3 = "tosa.logical_not"(%arg0) : (tensor<1xi1>) -> tensor<1xi1>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

