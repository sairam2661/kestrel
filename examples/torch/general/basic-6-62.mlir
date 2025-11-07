"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,1,128,128],si64>) -> !torch.vtensor<[1,1,128,128],si64>, sym_name = "torch.aten.clamp.min_none"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,1,128,128],si64>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.aten.clamp"(%arg0, %1, %0) : (!torch.vtensor<[1,1,128,128],si64>, !torch.none, !torch.int) -> !torch.vtensor<[1,1,128,128],si64>
    "func.return"(%2) : (!torch.vtensor<[1,1,128,128],si64>) -> ()
  }) : () -> ()
}) : () -> ()

