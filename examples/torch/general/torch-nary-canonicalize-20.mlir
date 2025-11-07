"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "fold_aten_div_tensor_mode_float"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<8.000000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %1 = "torch.vtensor.literal"() <{value = dense<2.100000e+00> : tensor<4xf32>}> : () -> !torch.vtensor<[4],f32>
    %2 = "torch.constant.str"() <{value = "floor"}> : () -> !torch.str
    %3 = "torch.aten.div.Tensor_mode"(%0, %1, %2) : (!torch.vtensor<[4],f32>, !torch.vtensor<[4],f32>, !torch.str) -> !torch.vtensor<[4],f32>
    "func.return"(%3) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

