"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "fold_aten_add_arr1_float"}> ({
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch.float
    %1 = "torch.vtensor.literal"() <{value = dense<7.000000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %2 = "torch.vtensor.literal"() <{value = dense<[1.000000e+01, 1.100000e+01, 1.200000e+01, 1.300000e+01]> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %3 = "torch.aten.add.Tensor"(%1, %2, %0) : (!torch.vtensor<[4],f32>, !torch.vtensor<[4],f32>, !torch.float) -> !torch.vtensor<[4],f32>
    "func.return"(%3) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

