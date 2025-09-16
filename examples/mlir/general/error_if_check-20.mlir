"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi8>) -> tensor<1xi32>, sym_name = "test_error_i32_unsigned_output"}> ({
  ^bb0(%arg0: tensor<1xi8>):
    %0 = "tosa.const"() <{values = dense<19689> : tensor<1xi16>}> : () -> tensor<1xi16>
    %1 = "tosa.const"() <{values = dense<30> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<0> : tensor<1xi32>}> : () -> tensor<1xi32>
    %4 = "tosa.rescale"(%arg0, %0, %1, %2, %3) <{input_unsigned = false, output_unsigned = true, per_channel = false, rounding_mode = "SINGLE_ROUND", scale32 = false}> : (tensor<1xi8>, tensor<1xi16>, tensor<1xi8>, tensor<1xi8>, tensor<1xi32>) -> tensor<1xi32>
    "func.return"(%4) : (tensor<1xi32>) -> ()
  }) : () -> ()
}) : () -> ()

