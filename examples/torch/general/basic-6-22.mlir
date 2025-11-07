"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?,?,?],i1>) -> !torch.vtensor<[1],i1>, sym_name = "test_reduce_any$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?,?,?],i1>):
    %0 = "torch.aten.any"(%arg0) : (!torch.vtensor<[?,?,?,?],i1>) -> !torch.vtensor<[1],i1>
    "func.return"(%0) : (!torch.vtensor<[1],i1>) -> ()
  }) : () -> ()
}) : () -> ()

