"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "torch.aten.add.Tensor_Tensor$basic"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensorliteral) -> !torch_vtensorliteral
    %2 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensorliteral) -> !torch_vtensorliteral
    %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %4 = "torch.aten.add.Tensor"(%3, %1) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral
    %5 = "torch.aten.add.Tensor"(%4, %0) : (!torch_vtensorliteral, !torch_bool) -> !torch_vtensorliteral
    "func.return"(%5) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()