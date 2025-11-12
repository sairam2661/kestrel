"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add_and_view"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1}> : () -> !torch_vtensor
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor
    %2 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %2, %1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%arg0, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.view"(%4, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()