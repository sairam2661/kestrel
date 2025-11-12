"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x2xi8>) -> tensor<2x2xi16>, sym_name = "test_rescale_i16_zp32767"}> ({
  ^bb0(%arg0: tensor<2x2xi8>):
    %0 = "llvm.mlir.constant"() <{value = dense<-32767> : tensor<2x2xi16>}> : () -> tensor<2x2xi16>
    %1 = "llvm.mlir.constant"() <{value = dense<1> : tensor<2x2xi8>}> : () -> tensor<2x2xi8>
    %2 = "llvm.mlir.constant"() <{value = dense<2> : tensor<2x2xi8>}> : () -> tensor<2x2xi8>
    %3 = "llvm.mlir.constant"() <{value = dense<0> : tensor<2x2xi16>}> : () -> tensor<2x2xi16>
    %4 = "tosa.rescale"(%arg0, %0, %1, %2, %3) <{input_unsigned = true, output_unsigned = false, per_channel = false, rounding_mode = "HALF_TO_EVEN", scale32 = true}> : (tensor<2x2xi8>, tensor<2x2xi16>, tensor<2x2xi8>, tensor<2x2xi8>, tensor<2x2xi16>) -> tensor<2x2xi16>
    "func.return"(%4) : (tensor<2x2xi16>) -> ()
  }) : () -> ()
}) : () -> ()