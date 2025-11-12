"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add.Tensor_then_cat"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.add.Tensor"(%0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.cat"(%1, %arg1, %arg0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()