"builtin.module"() ({
  "func.func"() <{
    function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral,
    sym_name = "fuzz_complex_view"
  }> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensorliteral
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensorliteral
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensorliteral
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_vtensorliteral
      %size0 = "torch.aten.size.int"(%arg0, %c1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %size1 = "torch.aten.size.int"(%arg0, %c2) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %list_sizes = "torch.prim.ListConstruct"(%size0, %size1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %viewed = "torch.aten.view"(%arg0, %list_sizes) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %slice0 = "torch.aten.slice.Tensor"(%viewed, %c1, %c0, %c2) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %slice1 = "torch.aten.slice.Tensor"(%slice0, %c2, %c0, %c1) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %result = "torch.aten.add.Tensor"(%slice1, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      "func.return"(%result) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()