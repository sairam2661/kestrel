"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_div_tensor_mode_int"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<8> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %1 = "torch.vtensor.literal"() <{value = dense<2> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.constant.str"() <{value = "trunc"}> : () -> !torch.str
    %3 = "torch.aten.div.Tensor_mode"(%0, %1, %2) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>, !torch.str) -> !torch.vtensor<[4],si64>
    "func.return"(%3) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

