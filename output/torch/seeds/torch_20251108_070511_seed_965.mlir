"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.slice.Tensor"(%arg1, %0, %0, %0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.index_select"(%arg0, %0, %1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.index_select"(%arg1, %0, %2) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.minimum"(%3, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()