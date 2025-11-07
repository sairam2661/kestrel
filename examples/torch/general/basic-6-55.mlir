"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,5],si64>) -> !torch.vtensor<[3,5],i1>, sym_name = "torch.aten.to.dtype$toBool"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,5],si64>):
    %0 = "torch.constant.int"() <{value = 11 : i64}> : () -> !torch.int
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %3 = "torch.aten.to.dtype"(%arg0, %0, %2, %2, %1) : (!torch.vtensor<[3,5],si64>, !torch.int, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[3,5],i1>
    "func.return"(%3) : (!torch.vtensor<[3,5],i1>) -> ()
  }) : () -> ()
}) : () -> ()

