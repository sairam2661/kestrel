"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_torch_aten_add_slice"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.slice.Tensor"(%arg0, %c0, %c0, %c3, %c1) : (!torch_vtensor, index, index, index, index) -> !torch_vtensor
      %1 = "torch.aten.slice.Tensor"(%arg1, %c0, %c0, %c3, %c1) : (!torch_vtensor, index, index, index, index) -> !torch_vtensor
      %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()