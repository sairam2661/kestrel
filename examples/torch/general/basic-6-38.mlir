"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],i1>, !torch.vtensor<[?,?],i1>) -> !torch.vtensor<[?,?],i1>, sym_name = "torch.aten.logical_or$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],i1>, %arg1: !torch.vtensor<[?,?],i1>):
    %0 = "torch.aten.logical_or"(%arg0, %arg1) : (!torch.vtensor<[?,?],i1>, !torch.vtensor<[?,?],i1>) -> !torch.vtensor<[?,?],i1>
    "func.return"(%0) : (!torch.vtensor<[?,?],i1>) -> ()
  }) : () -> ()
}) : () -> ()

