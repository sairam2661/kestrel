"builtin.module"() ({
  "func.func"() <{function_type = (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>, sym_name = "tosa_const_fuzz"}> ({
  ^bb0(%arg0: tensor<?xi32>, %arg1: tensor<?xi32>):
    %0 = "tosa.const"() <{value = dense<42> : tensor<?xi32>}> : () -> tensor<?xi32>
    %1 = "tosa.const"() <{value = dense<100> : tensor<?xi32>}> : () -> tensor<?xi32>
    %2 = "tosa.add"(%arg0, %0) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    %3 = "tosa.sub"(%2, %1) : (tensor<?xi32>, tensor<?xi32>) -> tensor<?xi32>
    "func.return"(%3) : (tensor<?xi32>) -> ()
  }) : () -> ()
}) : () -> ()