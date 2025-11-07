"builtin.module"() ({
  "func.func"() <{function_type = () -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_where_true_attr"}> ({
    %0 = "torch.vtensor.literal"() <{value = dense<true> : tensor<4xi1>}> : () -> !torch.vtensor<[4],i1>
    %1 = "torch.vtensor.literal"() <{value = dense<7> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %2 = "torch.vtensor.literal"() <{value = dense<11> : tensor<si64>}> : () -> !torch.vtensor<[],si64>
    %3 = "torch.aten.where.self"(%0, %1, %2) : (!torch.vtensor<[4],i1>, !torch.vtensor<[4],si64>, !torch.vtensor<[],si64>) -> !torch.vtensor<[4],si64>
    "func.return"(%3) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

