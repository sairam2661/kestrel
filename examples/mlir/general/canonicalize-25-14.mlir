"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>) -> tensor<?x1xi32>, sym_name = "cast_nofold"}> ({
  ^bb0(%arg0: tensor<?x1xf32>):
    %0 = "tosa.cast"(%arg0) : (tensor<?x1xf32>) -> tensor<?x1xi32>
    "func.return"(%0) : (tensor<?x1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

