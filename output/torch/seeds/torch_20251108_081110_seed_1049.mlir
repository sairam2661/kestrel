"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add_with_neg"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.neg"(%arg1) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.add"(%arg0, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()