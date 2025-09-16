"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xi32>) -> (), sym_name = "reverse"}> ({
  ^bb0(%arg0: tensor<5x4xi32>):
    %0 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (tensor<5x4xi32>) -> tensor<5x4xi32>
    %1 = "tosa.reverse"(%arg0) <{axis = 1 : i32}> : (tensor<5x4xi32>) -> tensor<5x4xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

