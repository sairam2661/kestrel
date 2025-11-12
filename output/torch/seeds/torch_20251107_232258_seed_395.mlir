"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz_case"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_vtensor
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.index_select"(%arg1, %3, %2) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.cat"(%5, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()