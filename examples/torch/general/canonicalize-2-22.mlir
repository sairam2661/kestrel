"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],si64>, sym_name = "fold_aten_where_true_value"}> ({
  ^bb0(%arg0: !torch.vtensor<[4],si64>, %arg1: !torch.vtensor<[4],si64>):
    %0 = "torch.vtensor.literal"() <{value = dense<true> : tensor<4xi1>}> : () -> !torch.vtensor<[4],i1>
    %1 = "torch.aten.where.self"(%0, %arg0, %arg1) : (!torch.vtensor<[4],i1>, !torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],si64>
    "func.return"(%1) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

