"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xf32>) -> (), sym_name = "test_simple_f32"}> ({
  ^bb0(%arg0: tensor<1xf32>):
    %0 = "tosa.tanh"(%arg0) : (tensor<1xf32>) -> tensor<1xf32>
    %1 = "tosa.abs"(%arg0) : (tensor<1xf32>) -> tensor<1xf32>
    %2 = "tosa.add"(%0, %0) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %3 = "tosa.sub"(%0, %1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %4 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %5 = "tosa.mul"(%0, %1, %4) : (tensor<1xf32>, tensor<1xf32>, tensor<1xi8>) -> tensor<1xf32>
    %6 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %7 = "tosa.const"() <{values = dense<0.000000e+00> : tensor<1xf32>}> : () -> tensor<1xf32>
    %8 = "tosa.negate"(%0, %6, %7) : (tensor<1xf32>, tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %9 = "tosa.pow"(%1, %2) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %10 = "tosa.rsqrt"(%1) : (tensor<1xf32>) -> tensor<1xf32>
    %11 = "tosa.log"(%arg0) : (tensor<1xf32>) -> tensor<1xf32>
    %12 = "tosa.exp"(%arg0) : (tensor<1xf32>) -> tensor<1xf32>
    %13 = "tosa.greater"(%0, %1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xi1>
    %14 = "tosa.greater_equal"(%0, %1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xi1>
    %15 = "tosa.equal"(%0, %1) : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xi1>
    %16 = "tosa.select"(%13, %0, %1) : (tensor<1xi1>, tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %17 = "tosa.maximum"(%0, %1) <{nan_mode = "PROPAGATE"}> : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %18 = "tosa.minimum"(%0, %1) <{nan_mode = "PROPAGATE"}> : (tensor<1xf32>, tensor<1xf32>) -> tensor<1xf32>
    %19 = "tosa.ceil"(%0) : (tensor<1xf32>) -> tensor<1xf32>
    %20 = "tosa.floor"(%0) : (tensor<1xf32>) -> tensor<1xf32>
    %21 = "tosa.clamp"(%0) <{max_val = 5.000000e+00 : f32, min_val = 1.000000e+00 : f32, nan_mode = "PROPAGATE"}> : (tensor<1xf32>) -> tensor<1xf32>
    %22 = "tosa.sigmoid"(%0) : (tensor<1xf32>) -> tensor<1xf32>
    %23 = "tosa.cast"(%0) : (tensor<1xf32>) -> tensor<1xi32>
    %24 = "tosa.cast"(%0) : (tensor<1xf32>) -> tensor<1xi1>
    %25 = "tosa.cast"(%0) : (tensor<1xf32>) -> tensor<1xf16>
    %26 = "tosa.reciprocal"(%0) : (tensor<1xf32>) -> tensor<1xf32>
    %27 = "tosa.erf"(%0) : (tensor<1xf32>) -> tensor<1xf32>
    %28 = "tosa.sin"(%arg0) : (tensor<1xf32>) -> tensor<1xf32>
    %29 = "tosa.cos"(%arg0) : (tensor<1xf32>) -> tensor<1xf32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

