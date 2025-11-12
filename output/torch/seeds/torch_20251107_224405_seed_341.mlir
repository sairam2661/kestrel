"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> !torchint, sym_name = "unusual_sequence"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint):
    %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 20 : i64}> : () -> !torchint
    %2 = "torch.aten.add"(%arg0, %1) : (!torchint, !torchint) -> !torchint
    %3 = "torch.aten.mul"(%2, %arg1) : (!torchint, !torchint) -> !torchint
    %4 = "torch.aten.sub"(%3, %arg0) : (!torchint, !torchint) -> !torchint
    %5 = "torch.aten.div"(%4, %0) : (!torchint, !torchint) -> !torchint
    "func.return"(%5) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()