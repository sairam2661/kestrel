"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "add_and_view"}> ({
  ^bb1(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.view"(%0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()