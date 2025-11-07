"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor<[3,4,5,6],i1>) -> !torch.vtensor<[4,5,6],i1>, sym_name = "test_reduce_any_dim$basic"}> ({
  ^bb0(%arg0: !torch.vtensor<[3,4,5,6],i1>):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch.int
    %1 = "torch.constant.bool"() <{value = false}> : () -> !torch.bool
    %2 = "torch.aten.any.dim"(%arg0, %0, %1) : (!torch.vtensor<[3,4,5,6],i1>, !torch.int, !torch.bool) -> !torch.vtensor<[4,5,6],i1>
    "func.return"(%2) : (!torch.vtensor<[4,5,6],i1>) -> ()
  }) : () -> ()
}) : () -> ()

