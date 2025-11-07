"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,5],si64>) -> !torch.vtensor<[4,5],si64>, sym_name = "torch.aten.threshold$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,5],si64>):
    %0 = "torch.constant.float"() <{value = 5.000000e-01 : f64}> : () -> !torch.float
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %2 = "torch.aten.threshold"(%arg0, %0, %1) : (!torch.vtensor<[4,5],si64>, !torch.float, !torch.int) -> !torch.vtensor<[4,5],si64>
    "func.return"(%2) : (!torch.vtensor<[4,5],si64>) -> ()
  }) : () -> ()
}) : () -> ()

