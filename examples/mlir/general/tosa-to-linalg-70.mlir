"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xi8>, tensor<5x4xi8>) -> (), sym_name = "reduce_max_nan_ignore_int"}> ({
  ^bb0(%arg0: tensor<5x4xi8>, %arg1: tensor<5x4xi8>):
    %0 = "tosa.reduce_max"(%arg0) <{axis = 0 : i32, nan_mode = "IGNORE"}> : (tensor<5x4xi8>) -> tensor<1x4xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

