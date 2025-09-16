"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x7x7xf32>) -> tensor<1x2x7x7xf32>, sym_name = "single_concat"}> ({
  ^bb0(%arg0: tensor<1x1x7x7xf32>):
    %0 = "tosa.concat"(%arg0, %arg0) <{axis = 1 : i32}> : (tensor<1x1x7x7xf32>, tensor<1x1x7x7xf32>) -> tensor<1x2x7x7xf32>
    "func.return"(%0) : (tensor<1x2x7x7xf32>) -> ()
  }) : () -> ()
}) : () -> ()

