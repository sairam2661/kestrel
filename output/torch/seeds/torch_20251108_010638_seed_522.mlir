"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "fuzz_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.aten.size.int"(%arg0) : (!torch_vtensorliteral) -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %2, %1) : (!torch_vtensorliteral, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensorliteral
    %4 = "torch.aten.view"(%arg1, %2) : (!torch_vtensorliteral, !torch_int) -> !torch_vtensorliteral
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %6 = "torch.aten.index_select"(%5, %0, %1) : (!torch_vtensorliteral, !torch_int, !torch_int) -> !torch_vtensorliteral
    %7 = "torch.aten.view"(%6, %2) : (!torch_vtensorliteral, !torch_int) -> !torch_vtensorliteral
    "func.return"(%7) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()