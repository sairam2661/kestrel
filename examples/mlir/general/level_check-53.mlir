"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1x1x1x1x13x21x3xi8>) -> tensor<1x1x1x1x13x21x3xi8>, sym_name = "test_rescale_rank_invalid"}> ({
  ^bb0(%arg0: tensor<1x1x1x1x13x21x3xi8>):
    %0 = "tosa.const"() <{values = dense<1073741824> : tensor<1xi32>}> : () -> tensor<1xi32>
    %1 = "tosa.const"() <{values = dense<30> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<127> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<-1> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = "tosa.rescale"(%arg0, %0, %1, %2, %3) <{input_unsigned = false, output_unsigned = false, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = true}> {input_zp = 127 : i32, output_zp = -1 : i32} : (tensor<1x1x1x1x13x21x3xi8>, tensor<1xi32>, tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<1x1x1x1x13x21x3xi8>
    "func.return"(%4) : (tensor<1x1x1x1x13x21x3xi8>) -> ()
  }) : () -> ()
}) : () -> ()

