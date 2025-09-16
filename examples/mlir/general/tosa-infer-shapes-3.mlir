"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi32>, tensor<2xi8>) -> (), sym_name = "test_unary_i32"}> ({
  ^bb0(%arg0: tensor<4xi32>, %arg1: tensor<2xi8>):
    %0 = "tosa.abs"(%arg0) : (tensor<4xi32>) -> tensor<*xi32>
    %1 = "tosa.bitwise_not"(%arg0) : (tensor<4xi32>) -> tensor<*xi32>
    %2 = "tosa.clamp"(%arg0) <{max_val = 10 : i32, min_val = 0 : i32, nan_mode = "PROPAGATE"}> : (tensor<4xi32>) -> tensor<*xi32>
    %3 = "tosa.clz"(%arg0) : (tensor<4xi32>) -> tensor<*xi32>
    %4 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %5 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %6 = "tosa.negate"(%arg0, %4, %5) : (tensor<4xi32>, tensor<1xi32>, tensor<1xi32>) -> tensor<*xi32>
    %7 = "tosa.reverse"(%arg0) <{axis = 0 : i32}> : (tensor<4xi32>) -> tensor<?xi32>
    %8 = "tosa.const"() <{values = dense<[42, 43]> : tensor<2xi16>}> : () -> tensor<2xi16>
    %9 = "tosa.const"() <{values = dense<[14, 15]> : tensor<2xi8>}> : () -> tensor<2xi8>
    %10 = "tosa.const"() <{values = dense<43> : tensor<1xi8>}> : () -> tensor<1xi8>
    %11 = "tosa.const"() <{values = dense<52> : tensor<1xi8>}> : () -> tensor<1xi8>
    %12 = "tosa.rescale"(%arg1, %8, %9, %10, %11) <{input_unsigned = true, output_unsigned = true, per_channel = true, rounding_mode = "SINGLE_ROUND", scale32 = false}> : (tensor<2xi8>, tensor<2xi16>, tensor<2xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<2xi8>
    %13 = "tosa.identity"(%arg0) : (tensor<4xi32>) -> tensor<?xi32>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

