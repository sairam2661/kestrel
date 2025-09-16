"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xi1>) -> (), sym_name = "reduce_bool"}> ({
  ^bb0(%arg0: tensor<5x4xi1>):
    %0 = "tosa.reduce_all"(%arg0) <{axis = 0 : i32}> : (tensor<5x4xi1>) -> tensor<1x4xi1>
    %1 = "tosa.reduce_any"(%arg0) <{axis = 0 : i32}> : (tensor<5x4xi1>) -> tensor<1x4xi1>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

