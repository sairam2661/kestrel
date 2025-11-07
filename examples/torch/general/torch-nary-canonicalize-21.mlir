"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],f32>, sym_name = "fold_aten_div_tensor_mode_none"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<8> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %1 = "torch.vtensor.literal"() <{value = dense<3> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.constant.none"() : () -> !torch.none
    %3 = "torch.aten.div.Tensor_mode"(%0, %1, %2) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>, !torch.none) -> !torch.vtensor<[4],f32>
    "func.return"(%3) : (!torch.vtensor<[4],f32>) -> ()
  }) : () -> ()
}) : () -> ()

