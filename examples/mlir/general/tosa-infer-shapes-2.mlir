"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xf32>) -> (), sym_name = "test_unary_f32"}> ({
  ^bb0(%arg0: tensor<4xf32>):
    %0 = "tosa.abs"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %1 = "tosa.ceil"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %2 = "tosa.clamp"(%arg0) <{max_val = 1.000000e+01 : f32, min_val = 0.000000e+00 : f32, nan_mode = "PROPAGATE"}> : (tensor<4xf32>) -> tensor<*xf32>
    %3 = "tosa.exp"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %4 = "tosa.floor"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %5 = "tosa.log"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %6 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %7 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %8 = "tosa.negate"(%arg0, %6, %7) : (tensor<4xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<*xf32>
    %9 = "tosa.reciprocal"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %10 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (tensor<4xf32>) -> tensor<?xf32>
    %11 = "tosa.rsqrt"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %12 = "tosa.tanh"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %13 = "tosa.sigmoid"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    %14 = "tosa.cast"(%arg0) : (tensor<4xf32>) -> tensor<*xi32>
    %15 = "tosa.erf"(%arg0) : (tensor<4xf32>) -> tensor<*xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

