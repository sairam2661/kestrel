"builtin.module"() ({
  "func.func"() <{function_type = (tensor<1xi8>) -> (), sym_name = "test_negate_quantized"}> ({
  ^bb0(%arg0: tensor<1xi8>):
    %0 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %1 = "tosa.const"() <{values = dense<7> : tensor<1xi8>}> : () -> tensor<1xi8>
    %2 = "tosa.negate"(%arg0, %0, %1) : (tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<1xi8>
    %3 = "tosa.const"() <{values = dense<-128> : tensor<1xi8>}> : () -> tensor<1xi8>
    %4 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %5 = "tosa.negate"(%arg0, %3, %4) : (tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<1xi8>
    %6 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %7 = "tosa.const"() <{values = dense<0> : tensor<1xi8>}> : () -> tensor<1xi8>
    %8 = "tosa.negate"(%arg0, %6, %7) : (tensor<1xi8>, tensor<1xi8>, tensor<1xi8>) -> tensor<1xi8>
    "func.return"() : () -> ()
  }) : () -> ()
}) : () -> ()

