"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2xi8>) -> tensor<2xi8>, sym_name = "rescaleDoubleRound"}> ({
  ^bb0(%arg0: tensor<2xi8>):
    %0 = "tosa.const"() <{values = dense<19689> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<33> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<43> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<52> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = "tosa.rescale"(%arg0, %0, %1, %2, %3) <{input_unsigned = false, output_unsigned = false, per_channel = false, rounding_mode = "DOUBLE_ROUND", scale32 = true}> : (tensor<2xi8>, tensor<1xi32>, tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<2xi8>
    "func.return"(%4) : (tensor<2xi8>) -> ()
  }) : () -> ()
}) : () -> ()

