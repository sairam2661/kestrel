"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_constantbool, !torch_constantfloat, !torch_constantnone) -> !torch_constantbool, sym_name = "fuzz_complex"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_constantbool, %arg2: !torch_constantfloat, %arg3: !torch_constantnone):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
      %2 = "torch.aten.slice.Tensor"(%arg0, %1, %0, %1, %1) : (!torch_vtensorliteral, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensorliteral
      %3 = "torch.aten.index_select"(%arg0, %1, %2) : (!torch_vtensorliteral, !torch_int, !torch_vtensorliteral) -> !torch_vtensorliteral
      %4 = "torch.aten.item"(%3) : (!torch_vtensorliteral) -> !torch_int
      %5 = "torch.prim.NumToTensor"(%4) : (!torch_int) -> !torch_vtensorliteral
      %6 = "torch.aten.eq.Tensor"(%2, %5) : (!torch_vtensorliteral, !torch_vtensorliteral) -> !torch_constantbool
      "func.return"(%6) : (!torch_constantbool) -> ()
  }) : () -> ()
}) : () -> ()