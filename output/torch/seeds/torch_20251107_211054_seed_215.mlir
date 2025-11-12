"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.aten.view"(%arg0, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.cat"(%0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten._shape_as_tensor"(%1) : (!torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.slice.Tensor"(%2, %arg2, %arg1, %arg0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()