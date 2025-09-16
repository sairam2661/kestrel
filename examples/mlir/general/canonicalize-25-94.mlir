"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>) -> tensor<?x1xf32>, sym_name = "fold_abs_abs"}> ({
  ^bb0(%arg0: tensor<?x1xf32>):
    %0 = "tosa.abs"(%arg0) : (tensor<?x1xf32>) -> tensor<?x1xf32>
    %1 = "tosa.abs"(%0) : (tensor<?x1xf32>) -> tensor<?x1xf32>
    "func.return"(%1) : (tensor<?x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

