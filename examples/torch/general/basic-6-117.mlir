"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>) -> !torch.vtensor<[4],si64>, sym_name = "torch.aten.threshold_backward$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[4],si64>, %arg1: !torch.vtensor<[4],si64>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.aten.threshold_backward"(%arg0, %arg1, %0) : (!torch.vtensor<[4],si64>, !torch.vtensor<[4],si64>, !torch.int) -> !torch.vtensor<[4],si64>
    "func.return"(%1) : (!torch.vtensor<[4],si64>) -> ()
  }) : () -> ()
}) : () -> ()

