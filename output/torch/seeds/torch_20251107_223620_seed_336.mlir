"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchconstantint) -> !torchvtensorliteral, sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchconstantint):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %1 = "torch.constant.none"() : () -> !torchnone
    %2 = "torch.aten.cat"(%arg0) <{dim = 0}> : (!torchvtensorliteral) -> !torchvtensorliteral
    %3 = "torch.aten.index_select"(%2, %arg1, %1) <{start = 0 : i64, end = 5 : i64, step = 1 : i64}> : (!torchvtensorliteral, !torchconstantint, !torchnone) -> !torchvtensorliteral
    %4 = "torch.constant.str"() <{value = "result"}> : () -> !torchstr
    "func.return"(%3) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()