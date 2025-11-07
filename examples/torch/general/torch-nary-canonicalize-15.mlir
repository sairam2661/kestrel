"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "fold_aten_remainder_scalar_float"}> ({
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.vtensor.literal"() <{value = dense<3.000000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %2 = "torch.aten.remainder.Scalar"(%1, %0) : (!torch.vtensor<[4],f32>, !torch.float) -> !torch.vtensor<[4],f32>
    "func.return"(%2) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

