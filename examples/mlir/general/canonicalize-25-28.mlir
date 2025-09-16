"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?x1xf32>) -> tensor<?x1xf32>, sym_name = "concat_fold"}> ({
  ^bb0(%arg0: tensor<?x1xf32>):
    %0 = "tosa.concat"(%arg0) <{axis = 0 : i32}> : (tensor<?x1xf32>) -> tensor<?x1xf32>
    "func.return"(%0) : (tensor<?x1xf32>) -> ()
  }) : () -> ()
}) : () -> ()

