"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[?,?],i1>) -> !torch.bool, sym_name = "torch.aten.Bool.Tensor$non_zero_rank"}> ({
  ^bb0(%arg0: !torch.vtensor<[?,?],i1>):
    %0 = "torch.aten.Bool.Tensor"(%arg0) : (!torch.vtensor<[?,?],i1>) -> !torch.bool
    "func.return"(%0) : (!torch.bool) -> ()
  }) : () -> ()
}) : () -> ()

