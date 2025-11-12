"builtin.module"() ({
  "func.func"() <{function_type = (tensor<2x3xi8>) -> tensor<3x2xi16>, sym_name = "complex_conversion"}> ({
  ^bb0(%arg0: tensor<2x3xi8>):
    %0 = "tosa.const"() <{values = dense<128> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.add"(%arg0, %0) <{overflow = false}> : (tensor<2x3xi8>, tensor<1xi8>) -> tensor<2x3xi8>
    %2 = "tosa.transpose"(%1) <{perm = [1, 0]}> : (tensor<2x3xi8>) -> tensor<3x2xi8>
    %3 = "tosa.cast"(%2) <{src_dtype = "i8", dst_dtype = "i16"}> : (tensor<3x2xi8>) -> tensor<3x2xi16>
    %4 = "tosa.mul"(%3, %3) <{overflow = false}> : (tensor<3x2xi16>, tensor<3x2xi16>) -> tensor<3x2xi16>
    "func.return"(%4) : (tensor<3x2xi16>) -> ()
  }) : () -> ()
}) : () -> ()