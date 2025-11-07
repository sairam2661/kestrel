"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,128,128],si64>) -> !torch.vtensor<[1,1,128,128],si64>, sym_name = "torch.aten.clamp"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,128,128],si64>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.int"() <{value = 511 : i64}> : () -> !torch.int
    %2 = "torch.aten.clamp"(%arg0, %0, %1) : (!torch.vtensor<[1,1,128,128],si64>, !torch.int, !torch.int) -> !torch.vtensor<[1,1,128,128],si64>
    "func.return"(%2) : (!torch.vtensor<[1,1,128,128],si64>) -> ()
  }) : () -> ()
}) : () -> ()

