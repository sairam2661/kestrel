"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_add_arr1_int"}> ({
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.vtensor.literal"() <{value = dense<7> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.vtensor.literal"() <{value = dense<[10, 11, 12, 13]> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %3 = "torch.aten.add.Tensor"(%1, %2, %0) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>, !torch.int) -> !torch.vtensor<[4],si64>
    "func.return"(%3) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

