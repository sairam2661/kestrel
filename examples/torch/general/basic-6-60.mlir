"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,128,128],si64>) -> !torch.vtensor<[1,1,128,128],si64>, sym_name = "torch.aten.Scalar$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,128,128],si64>):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 256 : i64}> : () -> !torch.int
    %2 = "torch.aten.add.Scalar"(%arg0, %1, %0) : (!torch.vtensor<[1,1,128,128],si64>, !torch.int, !torch.int) -> !torch.vtensor<[1,1,128,128],si64>
    "func.return"(%2) : (!torch.vtensor<[1,1,128,128],si64>) -> ()
  }) : () -> ()
}) : () -> ()

