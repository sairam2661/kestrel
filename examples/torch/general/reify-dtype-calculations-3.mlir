"builtin.module"() ({
  "func.func"() <{function_type = (!torch.vtensor, !torch.vtensor) -> !torch.vtensor, sym_name = "turn_tensors_into_rank_and_dtype_args"}> ({
  ^bb0(%arg0: !torch.vtensor, %arg1: !torch.vtensor):
    %0 = "torch.aten.floor_divide"(%arg0, %arg1) : (!torch.vtensor, !torch.vtensor) -> !torch.vtensor
    "func.return"(%0) : (!torch.vtensor) -> ()
  }) : () -> ()
}) : () -> ()

