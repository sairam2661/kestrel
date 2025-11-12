"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchint, !torchint, !torchnone) -> !torchvtensorliteral, sym_name = "complex_fuzzing"}> ({
  ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchint, %arg2: !torchint, %arg3: !torchnone):
    %0 = "torch.aten.size.int"(%arg0) : (!torchvtensorliteral) -> !torchint
    %1 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchvtensorliteral
    %2 = "torch.aten.slice.Tensor"(%1, %arg1, %arg2, %arg2) : (!torchvtensorliteral, !torchint, !torchint, !torchint) -> !torchvtensorliteral
    %3 = "torch.aten.index_select"(%2, %arg1, %arg0) : (!torchvtensorliteral, !torchint, !torchvtensorliteral) -> !torchvtensorliteral
    %4 = "torch.aten.view"(%3, %arg1) : (!torchvtensorliteral, !torchint) -> !torchvtensorliteral
    %5 = "torch.constant.none"() : () -> !torchnone
    %6 = "torch.aten.cat"(%3, %arg1) : (!torchvtensorliteral, !torchint) -> !torchvtensorliteral
    %7 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
    %8 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torchvtensorliteral, !torchvtensorliteral) -> !torchbool
    "func.return"(%4) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()