"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1xi8>) -> tensor<1x1xui8>, sym_name = "test_rescale_output_unsigned"}> ({
  ^bb0(%arg0: tensor<1x1xi8>):
    %0 = "tosa.const"() <{values = dense<1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<2> : tensor<1xi32>}> : () -> tensor<1xi32>
    %2 = "tosa.const"() <{values = dense<3> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<-128> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = "tosa.rescale"(%arg0, %1, %0, %3, %2) <{input_unsigned = false, output_unsigned = true, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = true}> : (tensor<1x1xi8>, tensor<1xi32>, tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<1x1xui8>
    "func.return"(%4) : (tensor<1x1xui8>) -> ()
  }) : () -> ()
}) : () -> ()

