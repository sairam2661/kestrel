"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x?x?x32xi32>) -> (), sym_name = "rescale_dyn"}> ({
  ^bb0(%arg0: tensor<1x?x?x32xi32>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<1376784203> : tensor<1xi32>}> : () -> tensor<1xi32>
    %3 = "tosa.const"() <{values = dense<38> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = "tosa.rescale"(%arg0, %2, %3, %0, %1) <{input_unsigned = false, output_unsigned = false, per_channel = false, rounding_mode = "DOUBLE_ROUND", scale32 = true}> {input_zp = 0 : i32, output_zp = 0 : i32} : (tensor<1x?x?x32xi32>, tensor<1xi32>, tensor<1xi8>, tensor<1xi32>, tensor<1xi8>) -> tensor<1x?x?x32xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

