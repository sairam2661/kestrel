"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> !torchint, sym_name = "unusual_add_and_cat"}> ({
    ^bb0(%arg0: !torchint, %arg1: !torchint):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 255 : i64}> : () -> !torchint
      %2 = "torch.aten.add.Tensor"(%arg0, %0) : (!torchint, !torchint) -> !torchint
      %3 = "torch.aten.add.Tensor"(%arg1, %1) : (!torchint, !torchint) -> !torchint
      %4 = "torch.aten.size.int"(%2) : (!torchint) -> !torchint
      %5 = "torch.aten.size.int"(%3) : (!torchint) -> !torchint
      %6 = "torch.prim.ListConstruct"(%4, %5) : (!torchint, !torchint) -> !torchlist
      %7 = "torch.aten.cat"(%6) : (!torchlist) -> !torchint
      "func.return"(%7) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()