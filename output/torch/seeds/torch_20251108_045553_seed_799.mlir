"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantnone, !torchconstantint, !torchvtensorliteral) -> !torchconstantbool, sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: !torchconstantnone, %arg1: !torchconstantint, %arg2: !torchvtensorliteral):
    %0 = "torch.aten.size.int"(%arg2) : (!torchvtensorliteral) -> !torchint
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchint) -> !torchint
    %2 = "torch.aten.eq.Tensor"(%1, %arg1) : (!torchint, !torchconstantint) -> !torchbool
    %3 = "torch.constant.bool"() <{value = false}> : () -> !torchbool
    %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torchbool, !torchbool) -> !torchbool
    "func.return"(%4) : (!torchbool) -> ()
  }) : () -> ()
}) : () -> ()