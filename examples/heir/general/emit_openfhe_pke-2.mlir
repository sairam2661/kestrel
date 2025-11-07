"builtin.module"() ({
  "func.func"() <{function_type = () -> tensor<2xf32>, sym_name = "test_constant"}> ({
    %0 = "arith.constant"() <{value = dense<1.500000e+00> : tensor<2xf32>}> : () -> tensor<2xf32>
    %1 = "arith.constant"() <{value = dense<[1, 2]> : tensor<2xi32>}> : () -> tensor<2xi32>
    %2 = "arith.constant"() <{value = dense<[1.500000e+00, 2.500000e+00]> : tensor<2xf32>}> : () -> tensor<2xf32>
    %3 = "arith.constant"() <{value = dense<-0.38478666543960571> : tensor<16xf64>}> : () -> tensor<16xf64>
    %4 = "arith.constant"() <{value = dense<-1.1268185335211456E-4> : tensor<16xf64>}> : () -> tensor<16xf64>
    %5 = "arith.constant"() <{value = dense<[[1.500000e+00, 2.500000e+00]]> : tensor<1x2xf64>}> : () -> tensor<1x2xf64>
    "func.return"(%0) : (tensor<2xf32>) -> ()
  }) : () -> ()
}) {scheme.bgv} : () -> ()

