"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral, sym_name = "torch_aten_slice_Tensor_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_constantint, %arg2: !torch_constantint):
      %0 = "torch.aten.slice.Tensor"(%arg0, %arg1, %arg2) : (!torch_vtensorliteral, !torch_constantint, !torch_constantint) -> !torch_vtensorliteral
      "func.return"(%0) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()