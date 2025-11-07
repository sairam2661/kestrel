"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "fold_aten_rsub_scalar_float"}> ({
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.vtensor.literal"() <{value = dense<3.000000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %2 = "torch.aten.rsub.Scalar"(%1, %0, %0) : (!torch.vtensor<[4],f32>, !torch.float, !torch.float) -> !torch.vtensor<[4],f32>
    "func.return"(%2) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

