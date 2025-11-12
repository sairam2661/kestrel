"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>, sym_name = "next_after_f32"}> ({
  ^bb0(%arg0: tensor<2xf32>, %arg1: tensor<2xf32>):
    %0 = "chlo.broadcast_next_after"(%arg0, %arg1) : (tensor<2xf32>, tensor<2xf32>) -> tensor<2xf32>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) : () -> ()

