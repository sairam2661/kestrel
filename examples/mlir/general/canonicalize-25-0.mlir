"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>) -> tensor<1xi32>, sym_name = "argmax_nofold"}> ({
  ^bb0(%arg0: tensor<?x1xf32>):
    %0 = "tosa.argmax"(%arg0) <{axis = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<?x1xf32>) -> tensor<1xi32>
    "func.return"(%0) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

