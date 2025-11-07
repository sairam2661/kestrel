"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x?xf32>) -> tensor<?x?xf32>, sym_name = "tanh"}> ({
  ^bb0(%arg0: tensor<?x?xf32>):
    %0 = "tosa.tanh"(%arg0) : (tensor<?x?xf32>) -> tensor<?x?xf32>
    "func.return"(%0) : (tensor<?x?xf32>) -> ()
  }) : () -> ()
}) : () -> ()

