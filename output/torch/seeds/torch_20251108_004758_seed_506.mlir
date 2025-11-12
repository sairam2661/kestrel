"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_0_0, !torch_vtensorliteral_0_1) -> (!torch_vtensorliteral_0_0), sym_name = "torch.aten.index_select_and_slice"}> ({
  ^bb0(%arg0: !torch_vtensorliteral_0_0, %arg1: !torch_vtensorliteral_0_1):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensorliteral_0_0) -> !torch_vtensorliteral_0_2
    %1 = "torch.prim.NumToTensor.Scalar"(%0#0) : (!torch_vtensorliteral_0_2) -> !torch_vtensorliteral_0_3
    %2 = "torch.aten.index_select"(%arg0, %1, %arg1) : (!torch_vtensorliteral_0_0, !torch_vtensorliteral_0_3, !torch_vtensorliteral_0_1) -> !torch_vtensorliteral_0_4
    %3 = "torch.aten.slice.Tensor"(%2, %1, %1, %1) : (!torch_vtensorliteral_0_4, !torch_vtensorliteral_0_3, !torch_vtensorliteral_0_3, !torch_vtensorliteral_0_3) -> !torch_vtensorliteral_0_5
    "func.return"(%3) : (!torch_vtensorliteral_0_5) -> ()
  }) : () -> ()
}) : () -> ()