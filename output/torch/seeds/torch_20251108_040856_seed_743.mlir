"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "index_select_and_complex_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %2 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
      %3 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %5 = "torch.aten.index_select"(%arg0, %4, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.add.Tensor"(%5, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten.cat"(%6, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.view"(%7, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %9 = "torch.aten.eq.Tensor"(%8, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()