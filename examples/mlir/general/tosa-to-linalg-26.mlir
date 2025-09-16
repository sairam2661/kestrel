"builtin.module"() ({
  "func.func"() <{function_type = (tensor<5x4xf32>) -> (), sym_name = "reduce_float"}> ({
  ^bb0(%arg0: tensor<5x4xf32>):
    %0 = "tosa.reduce_sum"(%arg0) <{axis = 0 : i32}> : (tensor<5x4xf32>) -> tensor<1x4xf32>
    %1 = "tosa.reduce_sum"(%arg0) <{axis = 1 : i32}> : (tensor<5x4xf32>) -> tensor<5x1xf32>
    %2 = "tosa.reduce_product"(%arg0) <{axis = 0 : i32}> : (tensor<5x4xf32>) -> tensor<1x4xf32>
    %3 = "tosa.reduce_min"(%arg0) <{axis = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<5x4xf32>) -> tensor<1x4xf32>
    %4 = "tosa.reduce_max"(%arg0) <{axis = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<5x4xf32>) -> tensor<1x4xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

