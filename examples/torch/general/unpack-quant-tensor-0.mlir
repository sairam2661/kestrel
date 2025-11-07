"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,8],f16>) -> !torch.vtensor<[1,1,8],f16>, sym_name = "forward"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,8],f16>):
    %0 = "torch.vtensor.literal"() <{value = dense<[[57, 128, 249, 244], [7, 243, 27, 15], [1, 2, 159, 71], [159, 253, 160, 231], [248, 224, 191, 228], [96, 15, 158, 220], [240, 250, 47, 208], [127, 192, 239, 176]]> : tensor<8x4xui8>}> : () -> !torch.vtensor<[8,4],ui8>
    %1 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<8x4x1xf16>}> : () -> !torch.vtensor<[8,4,1],f16>
    %2 = "torch.vtensor.literal"() <{value = dense<0.000000e+00> : tensor<8x4x1xf16>}> : () -> !torch.vtensor<[8,4,1],f16>
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %5 = "torch.operator"(%arg0, %0, %1, %2, %3, %4) <{name = "quant.matmul_rhs_group_quant"}> : (!torch.vtensor<[1,1,8],f16>, !torch.vtensor<[8,4],ui8>, !torch.vtensor<[8,4,1],f16>, !torch.vtensor<[8,4,1],f16>, !torch.int, !torch.int) -> !torch.vtensor<[1,1,8],f16>
    "func.return"(%5) : (!torch.vtensor<[1,1,8],f16>) -> ()
  }) : () -> ()
}) : () -> ()

