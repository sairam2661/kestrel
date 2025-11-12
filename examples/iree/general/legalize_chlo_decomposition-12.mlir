"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xi64>) -> tensor<?x?xf32>, sym_name = "constant_like_dynamic_shape"}> ({
  ^bb0(%arg0: tensor<?x?xi64>):
    %0 = "chlo.constant_like"(%arg0) <{value = 3.200000e+00 : f32}> : (tensor<?x?xi64>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

