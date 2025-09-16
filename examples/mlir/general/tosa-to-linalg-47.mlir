"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>) -> (), sym_name = "reverse_dyn"}> ({
  ^bb0(%arg0: tensor<?xi32>):
    %0 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (tensor<?xi32>) -> tensor<?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

