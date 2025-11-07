"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,2],f16>) -> !torch.vtensor<[1,1,2],f16>, sym_name = "forward"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,2],f16>):
    %0 = "torch.vtensor.literal"() <{value = dense<[[0, 1], [2, 3]]> : tensor<2x2xui8>}> : () -> !torch.vtensor<[2,2],ui8>
    %1 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<2x1x1xf16>}> : () -> !torch.vtensor<[2,1,1],f16>
    %2 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<2x1x1xf16>}> : () -> !torch.vtensor<[2,1,1],f16>
    %3 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.operator"(%arg0, %0, %1, %2, %3, %4) <{name = "quant.matmul_rhs_group_quant"}> : (!torch.vtensor<[1,1,2],f16>, !torch.vtensor<[2,2],ui8>, !torch.vtensor<[2,1,1],f16>, !torch.vtensor<[2,1,1],f16>, !torch.int, !torch.int) -> !torch.vtensor<[1,1,2],f16>
    "func.return"(%5) : (!torch.vtensor<[1,1,2],f16>) -> ()
  }) : () -> ()
}) : () -> ()

