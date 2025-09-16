"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>) -> tensor<?x1xf32>, sym_name = "fold_log_exp"}> ({
  ^bb0(%arg0: tensor<?x1xf32>):
    %0 = "tosa.exp"(%arg0) : (tensor<?x1xf32>) -> tensor<?x1xf32>
    %1 = "tosa.log"(%0) : (tensor<?x1xf32>) -> tensor<?x1xf32>
    "func.return"(%1) : (tensor<?x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

