"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi8>) -> (), sym_name = "rescale_i8_unsigned_input_implicit"}> ({
  ^bb0(%arg0: tensor<2xi8>):
    %0 = "tosa.const"() <{values = dense<19689> : tensor<1xi16>}> : () -> tensor<1xi16>
    %1 = "tosa.const"() <{values = dense<15> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<-128> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<22> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = "tosa.rescale"(%arg0, %0, %1, %2, %3) <{input_unsigned = true, output_unsigned = false, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = false}> : (tensor<2xi8>, tensor<1xi16>, tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<2xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

