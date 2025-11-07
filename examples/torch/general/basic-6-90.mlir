"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[4,5],i1>) -> !torch.vtensor<[4,5],i1>, sym_name = "torch.aten.logical_not"}> ({
  ^bb0(%arg0: !torch.vtensor<[4,5],i1>):
    %0 = "torch.aten.logical_not"(%arg0) : (!torch.vtensor<[4,5],i1>) -> !torch.vtensor<[4,5],i1>
    "func.return"(%0) : (!torch.vtensor<[4,5],i1>) -> ()
  }) : () -> ()
}) : () -> ()

