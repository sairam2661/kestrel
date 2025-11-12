"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensorliteral, !torchint) -> !torchvtensorliteral, sym_name = "index_select_and_view"}> ({
  ^bb0(%arg0: !torchvtensorliteral, %arg1: !torchint):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %1 = "torch.prim.ListConstruct"(%0, %arg1) : (!torchint, !torchint) -> !torchlistint
    %2 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torchvtensorliteral, !torchint, !torchint) -> !torchvtensorliteral
    %3 = "torch.aten.view"(%2, %1) : (!torchvtensorliteral, !torchlistint) -> !torchvtensorliteral
    "func.return"(%3) : (!torchvtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()