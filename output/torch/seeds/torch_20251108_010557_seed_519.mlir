"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> (!torch_vtensorliteral, !torch_vtensorliteral), sym_name = "torch_tensor_ops"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral, %arg2: !torch_vtensorliteral):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensorliteral, !torch_int) -> !torch_int
      %size1 = "torch.aten.size.int"(%arg1, %c0) : (!torch_vtensorliteral, !torch_int) -> !torch_int
      %add0 = "torch.aten.add.Tensor"(%size0, %size1, %c0) : (!torch_int, !torch_int, !torch_int) -> !torch_int
      %view0 = "torch.aten.view"(%arg0, %add0) : (!torch_vtensorliteral, !torch_int) -> !torch_vtensorliteral
      %slice0 = "torch.aten.slice.Tensor"(%view0, %c0, %c0, %size0) : (!torch_vtensorliteral, !torch_int, !torch_int, !torch_int) -> !torch_vtensorliteral
      %eq0 = "torch.aten.eq.Tensor"(%arg1, %arg2) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %item0 = "torch.aten.item"(%eq0) : (!torch_vtensorliteral) -> !torch_int
      %index_select0 = "torch.aten.index_select"(%arg2, %c0, %item0) : (!torch_vtensorliteral, !torch_int, !torch_int) -> !torch_vtensorliteral
      "func.return"(%slice0, %index_select0) : (!torch_vtensorliteral, !torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()