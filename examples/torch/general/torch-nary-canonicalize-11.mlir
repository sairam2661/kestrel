"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "fold_aten_mul_splat_float"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<7.000000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %1 = "torch.vtensor.literal"() <{value = dense<1.100000e+01> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %2 = "torch.aten.mul.Tensor"(%0, %1) : (!torch.vtensor<[4],f32>, !torch.vtensor<[4],f32>) -> !torch.vtensor<[4],f32>
    "func.return"(%2) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

