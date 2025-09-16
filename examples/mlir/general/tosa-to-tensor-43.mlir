"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x?xf32>, tensor<6x?xf32>) -> (), sym_name = "concat_non_axis_dyn"}> ({
  ^bb0(%arg0: tensor<5x?xf32>, %arg1: tensor<6x?xf32>):
    %0 = "tosa.concat"(%arg0, %arg1) <{axis = 0 : i32}> : (tensor<5x?xf32>, tensor<6x?xf32>) -> tensor<11x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

