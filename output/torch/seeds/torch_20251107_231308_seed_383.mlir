"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "cross_dialect_interaction"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %size1 = "torch.aten.size.int"(%arg0, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %size2 = "torch.aten.size.int"(%arg0, %c2) : (!torch_vtensor, !torch_int) -> !torch_int
      %slice0 = "torch.aten.slice.Tensor"(%arg0, %c0, %c0, %size0, %c1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %slice1 = "torch.aten.slice.Tensor"(%arg1, %c0, %c0, %size1, %c1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %index_select = "torch.aten.index_select"(%slice0, %c1, %slice1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      "func.return"(%index_select) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()