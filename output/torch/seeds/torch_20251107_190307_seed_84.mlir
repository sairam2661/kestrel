"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_complex_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.mul"(%0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %2 = "torch.aten.sin"(%1) : (!torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.cos"(%2) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.max"(%3, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()