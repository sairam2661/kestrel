"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3x?x?xf32>) -> (), sym_name = "test_reduce_float"}> ({
  ^bb0(%arg0: tensor<2x3x?x?xf32>):
    %0 = "tosa.reduce_sum"(%arg0) <{axis = 0 : i32}> : (tensor<2x3x?x?xf32>) -> tensor<?x?x?x?xf32>
    %1 = "tosa.reduce_sum"(%arg0) <{axis = 1 : i32}> : (tensor<2x3x?x?xf32>) -> tensor<?x?x?x?xf32>
    %2 = "tosa.reduce_sum"(%arg0) <{axis = 2 : i32}> : (tensor<2x3x?x?xf32>) -> tensor<?x?x?x?xf32>
    %3 = "tosa.reduce_sum"(%arg0) <{axis = 3 : i32}> : (tensor<2x3x?x?xf32>) -> tensor<?x?x?x?xf32>
    %4 = "tosa.reduce_max"(%arg0) <{axis = 3 : i32, nan_mode = "PROPAGATE"}> : (tensor<2x3x?x?xf32>) -> tensor<?x?x?x?xf32>
    %5 = "tosa.reduce_min"(%arg0) <{axis = 3 : i32, nan_mode = "PROPAGATE"}> : (tensor<2x3x?x?xf32>) -> tensor<?x?x?x?xf32>
    %6 = "tosa.reduce_product"(%arg0) <{axis = 3 : i32}> : (tensor<2x3x?x?xf32>) -> tensor<?x?x?x?xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

