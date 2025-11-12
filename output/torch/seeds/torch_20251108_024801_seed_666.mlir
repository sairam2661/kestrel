"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral_0, !torchvtensorliteral_1, !torchvtensorliteral_2) -> !torchvtensorliteral_3, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torchvtensorliteral_0, %arg1: !torchvtensorliteral_1, %arg2: !torchvtensorliteral_2):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchvtensorliteral_0, !torchvtensorliteral_1) -> !torchvtensorliteral_0
      %1 = "torch.aten.view"(%0, %arg2) : (!torchvtensorliteral_0, !torchvtensorliteral_2) -> !torchvtensorliteral_3
      %2 = "torch.aten.cat"(%arg0, %arg1) : (!torchvtensorliteral_0, !torchvtensorliteral_1) -> !torchvtensorliteral_0
      %3 = "torch.aten.eq.Tensor"(%0, %2) : (!torchvtensorliteral_0, !torchvtensorliteral_0) -> !torchvtensorliteral_4
      "func.return"(%1) : (!torchvtensorliteral_3) -> ()
  }) : () -> ()
}) : () -> ()