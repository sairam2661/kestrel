"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %1 = torch.prim_ListConstruct %0 : (!torch_vtensor) -> !torch_tensor_list
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%3, %0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()