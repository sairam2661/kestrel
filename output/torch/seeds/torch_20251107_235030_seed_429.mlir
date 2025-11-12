"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor, sym_name = "complex_cat_and_view"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchint):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torchint, !torchint) -> !torchlist
      %3 = "torch.aten.view"(%arg0, %2) : (!torchvtensor, !torchlist) -> !torchvtensor
      %4 = "torch.prim.ListConstruct"(%arg1, %3) : (!torchvtensor, !torchvtensor) -> !torchlist
      %5 = "torch.aten.cat"(%4, %arg2) : (!torchlist, !torchint) -> !torchvtensor
      "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()