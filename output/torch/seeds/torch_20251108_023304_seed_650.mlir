"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> !torchint, sym_name = "unique_combinations"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
    %4 = "torch.prim.ListConstruct"(%0, %1, %2, %3) : (!torchint, !torchint, !torchint, !torchint) -> !torchlist
    %5 = "torch.aten.index.Tensor"(%4, %arg0) : (!torchlist, !torchint) -> !torchint
    %6 = "torch.aten.mul.Tensor"(%5, %arg1) : (!torchint, !torchint) -> !torchint
    %7 = "torch.aten.view"(%6, %1) : (!torchint, !torchint) -> !torchint
    "func.return"(%7) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()