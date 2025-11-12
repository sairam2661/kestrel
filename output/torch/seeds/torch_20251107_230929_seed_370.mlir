"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantbool) -> !torchconstantbool, sym_name = "complex_logic"}> ({
    ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantbool):
      %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
      %1 = "torch.constant.bool"() <{value = false}> : () -> !torchconstantbool
      %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
      "func.return"(%2) : (!torchconstantbool) -> ()
  }) : () -> ()
}) : () -> ()