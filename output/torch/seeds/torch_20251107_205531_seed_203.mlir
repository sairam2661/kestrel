"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_0, !torch_vtensorliteral_1) -> (!torch_vtensorliteral_2, !torch_vtensorliteral_0), sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensorliteral_0, %arg1: !torch_vtensorliteral_1):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral_0, !torch_vtensorliteral_1) -> !torch_vtensorliteral_2
      %4 = "torch.aten.view"(%3, %0) : (!torch_vtensorliteral_2, !torch_int) -> !torch_vtensorliteral_0
      %5 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral_0, !torch_vtensorliteral_1) -> !torch_vtensorliteral_3
      %6 = "torch.prim.ListConstruct"(%arg0, %arg1, %4, %5) : (!torch_vtensorliteral_0, !torch_vtensorliteral_1, !torch_vtensorliteral_0, !torch_vtensorliteral_3) -> !torch_list
      %7 = "torch.aten.item"(%arg0) : (!torch_vtensorliteral_0) -> !torch_int
      %8 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %1, %0) : (!torch_vtensorliteral_1, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensorliteral_1
      %9 = "torch.aten.index_select"(%arg0, %0, %7) : (!torch_vtensorliteral_0, !torch_int, !torch_int) -> !torch_vtensorliteral_0
      "func.return"(%4, %9) : (!torch_vtensorliteral_0, !torch_vtensorliteral_0) -> ()
  }) : () -> ()
}) : () -> ()