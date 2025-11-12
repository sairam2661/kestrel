"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.sin"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.cos"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.mul.Tensor"(%2, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()