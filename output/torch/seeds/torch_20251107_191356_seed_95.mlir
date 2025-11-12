"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral, sym_name = "complex_tensor_operation"}> ({
    ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchvtensorliteral, %arg2: !torchvtensorliteral):
      %1 = "arith.addf"(%arg0, %arg1) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      %2 = "arith.mulf"(%1, %arg2) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      %3 = "torch.aten.sin"(%2) : (!torchvtensorliteral) -> !torchvtensorliteral
      %4 = "arith.subf"(%3, %arg0) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
      "func.return"(%4) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()