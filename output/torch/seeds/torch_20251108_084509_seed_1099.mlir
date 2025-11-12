"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_aten_cat_slice_view"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %0 = "torch.aten.slice.Tensor"(%arg0, %c0, %c0, %c1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %1 = "torch.aten.slice.Tensor"(%arg1, %c0, %c0, %c2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %2 = "torch.aten.cat"(%0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.view"(%2, %c1, %c1, %c1, %c1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()