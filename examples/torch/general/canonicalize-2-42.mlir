"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],i1>, sym_name = "aten_eq_tensor_splat_dense_fp"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<5.000000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %1 = "torch.vtensor.literal"() <{value = dense<[4.000000e+00, 5.000000e+00, 6.000000e+00, 5.000000e+00]> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch.vtensor<[4],f32>, !torch.vtensor<[4],f32>) -> !torch.vtensor<[4],i1>
    "func.return"(%2) : (!torch.vtensor<[4],i1>) -> ()
  }) : () -> ()
}) : () -> ()

