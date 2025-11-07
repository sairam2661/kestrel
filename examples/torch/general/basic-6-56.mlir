"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[1,128],i1>) -> !torch.vtensor<[1,128],si64>, sym_name = "torch.aten.to.dtype$fromBool"}> ({
  ^bb0(%arg0: !torch.vtensor<[1,128],i1>):
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch.int
    %1 = "torch.constant.none"() : () -> !torch.none
    %2 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %3 = "torch.aten.to.dtype"(%arg0, %0, %2, %2, %1) : (!torch.vtensor<[1,128],i1>, !torch.int, !torch.bool, !torch.bool, !torch.none) -> !torch.vtensor<[1,128],si64>
    "func.return"(%3) : (!torch.vtensor<[1,128],si64>) -> ()
  }) : () -> ()
}) : () -> ()

