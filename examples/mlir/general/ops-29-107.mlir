"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi8>) -> tensor<2xi16>, sym_name = "test_rescale_i16_zp32768"}> ({
  ^bb0(%arg0: tensor<2xi8>):
    %0 = "tosa.const"() <{values = dense<19689> : tensor<1xi16>}> : () -> tensor<1xi16>
    %1 = "tosa.const"() <{values = dense<15> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<17> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<-32768> : tensor<1xi16>}> : () -> tensor<1xi16>
    %4 = "tosa.rescale"(%arg0, %0, %1, %2, %3) <{input_unsigned = false, output_unsigned = true, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = false}> : (tensor<2xi8>, tensor<1xi16>, tensor<1xi8>, tensor<1xi8>, tensor<1xi16>) -> tensor<2xi16>
    "func.return"(%4) : (tensor<2xi16>) -> ()
  }) : () -> ()
}) : () -> ()

