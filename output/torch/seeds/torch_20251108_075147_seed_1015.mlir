"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_f32_1x16x16x3, !torch_list_int, !torch_list_int, !torch_list_int, !torch_list_int) -> !torch_vtensorliteral_f32_1x16x16x3, sym_name = "complex_index_select"}> ({
    ^bb0(%arg0: !torch_vtensorliteral_f32_1x16x16x3, %arg1: !torch_list_int, %arg2: !torch_list_int, %arg3: !torch_list_int, %arg4: !torch_list_int):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %4 = "torch.prim.ListConstruct"(%0, %1, %2, %3) : (!torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_int
      %5 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensorliteral_f32_1x16x16x3, !torch_int, !torch_list_int) -> !torch_vtensorliteral_f32_1x16x16x3
      %6 = "torch.aten.index_select"(%5, %1, %arg2) : (!torch_vtensorliteral_f32_1x16x16x3, !torch_int, !torch_list_int) -> !torch_vtensorliteral_f32_1x16x16x3
      %7 = "torch.aten.index_select"(%6, %2, %arg3) : (!torch_vtensorliteral_f32_1x16x16x3, !torch_int, !torch_list_int) -> !torch_vtensorliteral_f32_1x16x16x3
      %8 = "torch.aten.index_select"(%7, %3, %arg4) : (!torch_vtensorliteral_f32_1x16x16x3, !torch_int, !torch_list_int) -> !torch_vtensorliteral_f32_1x16x16x3
      "func.return"(%8) : (!torch_vtensorliteral_f32_1x16x16x3) -> ()
  }) : () -> ()
}) : () -> ()