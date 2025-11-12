"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch_aten_add_tensor"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
      %cst0 = "torch.constant.float"() <{value = 2.000000e+00}> : () -> !torch_vtensorliteral
      %cst1 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensorliteral
      %size0 = "torch.aten.size.int"(%arg0, %cst1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_size
      %size1 = "torch.aten.size.int"(%arg1, %cst1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_size
      %add0 = "torch.aten.add.Tensor"(%arg0, %cst0) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %add1 = "torch.aten.add.Tensor"(%arg1, %cst0) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      %cat0 = "torch.aten.cat"(%add0, %add1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
      "func.return"(%cat0) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()