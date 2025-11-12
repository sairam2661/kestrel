"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "fuzzy_tensor_ops"}> ({
  ^bb0(%arg0: !torch_vtensorliteral):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensorliteral) -> !torch_vtensorliteral
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensorliteral
    %2 = "torch.aten.slice.Tensor"(%arg0, %1, %0, %1) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %3 = "torch.aten.view"(%2, %0) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %4 = "torch.aten.add.Tensor"(%arg0, %3) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%4, %1, %1, %1) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %6 = "torch.aten.eq.Tensor"(%arg0, %5) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %7 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensorliteral
    %8 = "torch.aten.index_select"(%arg0, %1, %7) : (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %9 = "torch.aten.cat"(%8, %1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    "func.return"(%9) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()