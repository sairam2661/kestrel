"builtin.module"() ({
  "func.func"() <{function_type = (!torch.int, !torch.int) -> !torch.vtensor<[1],si64>, sym_name = "aten_select_int_fold_splat"}> ({
  ^bb0(%arg0: !torch.int, %arg1: !torch.int):
    %0 = "torch.vtensor.literal"() <{value = dense<4> : tensor<4xsi64>}> : () -> !torch.vtensor<[4],si64>
    %1 = "torch.aten.select.int"(%0, %arg0, %arg1) : (!torch.vtensor<[4],si64>, !torch.int, !torch.int) -> !torch.vtensor<[1],si64>
    "func.return"(%1) : (!torch.vtensor<[1],si64>) -> ()
  }) : () -> ()
}) : () -> ()

