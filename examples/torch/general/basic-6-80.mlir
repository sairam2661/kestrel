"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,2,3],i1>) -> !torch.vtensor<[3,2,1],i1>, sym_name = "torch.aten.all.dim$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,2,3],i1>):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch.bool
    %2 = "torch.aten.all.dim"(%arg0, %0, %1) : (!torch.vtensor<[3,2,3],i1>, !torch.int, !torch.bool) -> !torch.vtensor<[3,2,1],i1>
    "func.return"(%2) : (!torch.vtensor<[3,2,1],i1>) -> ()
  }) : () -> ()
}) : () -> ()

