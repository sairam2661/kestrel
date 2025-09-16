"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x7x7xf32>) -> tensor<2x2x7x7xf32>, sym_name = "concat_different_axis"}> ({
  ^bb0(%arg0: tensor<1x1x7x7xf32>):
    %0 = "tosa.concat"(%arg0, %arg0) <{axis = 1 : i32}> : (tensor<1x1x7x7xf32>, tensor<1x1x7x7xf32>) -> tensor<1x2x7x7xf32>
    %1 = "tosa.concat"(%0, %0) <{axis = 0 : i32}> : (tensor<1x2x7x7xf32>, tensor<1x2x7x7xf32>) -> tensor<2x2x7x7xf32>
    "func.return"(%1) : (tensor<2x2x7x7xf32>) -> ()
  }) : () -> ()
}) : () -> ()

