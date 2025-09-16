"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi32>, tensor<1xi32>) -> tensor<13x21x3xi32>, sym_name = "test_rescale_non_const_multiplier"}> ({
  ^bb0(%arg0: tensor<13x21x3xi32>, %arg1: tensor<1xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<30> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.rescale"(%arg0, %arg1, %1, %0, %0) <{input_unsigned = false, output_unsigned = false, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = true}> {input_zp = 0 : i32, output_zp = 0 : i32} : (tensor<13x21x3xi32>, tensor<1xi32>, tensor<1xi8>, tensor<1xi32>, tensor<1xi32>) -> tensor<13x21x3xi32>
    "func.return"(%2) : (tensor<13x21x3xi32>) -> ()
  }) : () -> ()
}) : () -> ()

