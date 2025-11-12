"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> !torchint, sym_name = "complex_interleave"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %2 = "torch.aten.size.int"(%arg0, %0) : (!torchint, !torchint) -> !torchint
    %3 = "torch.aten.size.int"(%arg1, %0) : (!torchint, !torchint) -> !torchint
    %4 = "torch.prim.ListConstruct"(%2, %3) : (!torchint, !torchint) -> !torchlist
    %5 = "torch.aten.view"(%arg0, %4) : (!torchint, !torchlist) -> !torchint
    %6 = "torch.aten.view"(%arg1, %4) : (!torchint, !torchlist) -> !torchint
    %7 = "torch.aten.cat"(%5, %6) : (!torchint, !torchint) -> !torchint
    "func.return"(%7) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()