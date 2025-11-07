"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_add_arr0_int"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<[6, 7, 8, 9]> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %1 = "torch.vtensor.literal"() <{value = dense<11> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %3 = "torch.aten.add.Tensor"(%0, %1, %2) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>, !torch.int) -> !torch.vtensor<[4],si64>
    "func.return"(%3) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

