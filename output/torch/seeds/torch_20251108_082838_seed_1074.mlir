"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_interactions"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.mul"(%0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.sub"(%1, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()