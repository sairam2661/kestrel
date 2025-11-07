"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[1],si64>, sym_name = "aten_select_int_fold_1D"}> ({
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %2 = "torch.vtensor.literal"() <{value = dense<[5, 6, 7, 8]> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %3 = "torch.aten.select.int"(%2, %1, %0) : (!torch.vtensor<[4],si64>, !torch.int, !torch.int) -> !torch.vtensor<[1],si64>
    "func.return"(%3) : (!torch.vtensor<[1],si64>) -> ()
  }) : () -> ()
}) : () -> ()

