"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_where_true_sself_int"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<true> : tensor<4xi1>}> : () -> !torch.vtensor<[4],i1>
    %1 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch.int
    %2 = "torch.vtensor.literal"() <{value = dense<11> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %3 = "torch.aten.where.ScalarSelf"(%0, %1, %2) : (!torch.vtensor<[4],i1>, !torch.int, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],si64>
    "func.return"(%3) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

