"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xi8>, tensor<5x4xi8>) -> (), sym_name = "minimum_nan_ignore_int"}> ({
  ^bb0(%arg0: tensor<5x4xi8>, %arg1: tensor<5x4xi8>):
    %0 = "tosa.minimum"(%arg0, %arg1) <{nan_mode = "IGNORE"}> : (tensor<5x4xi8>, tensor<5x4xi8>) -> tensor<5x4xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

