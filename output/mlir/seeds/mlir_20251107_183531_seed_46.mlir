"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4xi8>) -> tensor<4xi16>, sym_name = "test_rescale_i16_zp0"}> ({
  ^bb0(%arg0: tensor<4xi8>):
    %0 = "tosa.const"() <{values = dense<256> : tensor<1xi16>}> : () -> tensor<1xi16>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<0> : tensor<1xi16>}> : () -> tensor<1xi16>
    %4 = "tosa.rescale"(%arg0, %0, %1, %2, %3) <{input_unsigned = true, output_unsigned = true, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = false}> : (tensor<4xi8>, tensor<1xi16>, tensor<1xi8>, tensor<1xi8>, tensor<1xi16>) -> tensor<4xi16>
    "func.return"(%4) : (tensor<4xi16>) -> ()
  }) : () -> ()
}) : () -> ()