"builtin.module"() ({
  "func.func"() <{function_type = (tensor<13x21x3xi8>) -> tensor<13x21x3xi8>, sym_name = "test_double_round_rescale"}> ({
  ^bb0(%arg0: tensor<13x21x3xi8>):
    %0 = "tosa.const"() <{values = dense<1073741824> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<30> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = "tosa.rescale"(%arg0, %0, %1, %2, %3) <{input_unsigned = false, output_unsigned = false, per_channel = false, rounding_mode = "DOUBLE_ROUND", scale32 = true}> : (tensor<13x21x3xi8>, tensor<1xi32>, tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<13x21x3xi8>
    "func.return"(%4) : (tensor<13x21x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()

