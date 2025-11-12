"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral, sym_name = "torch.aten.slice.Tensor_complex_case"}> ({
    ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchvtensorliteral):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchint
      %4 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torchvtensorliteral, !torchint, !torchint, !torchint) -> !torchvtensorliteral
      %5 = "torch.aten.slice.Tensor"(%arg1, %3, %2, %1) : (!torchvtensorliteral, !torchint, !torchint, !torchint) -> !torchvtensorliteral
      %6 = "torch.aten.cat"(%4, %5) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      "func.return"(%6) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()