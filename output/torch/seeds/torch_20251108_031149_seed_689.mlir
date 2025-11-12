"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvvector) -> !torchvvector, sym_name = "torch.aten.max_pool1d$complex"}> ({
    ^bb0(%arg0: !torchvvector, %arg1: !torchvvector):
      %0 = "torch.constant.bool"() <{value = false}> : () -> !torchbool
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %4 = "torch.prim.ListConstruct"(%1) : (!torchint) -> !torchlistint
      %5 = "torch.prim.ListConstruct"(%2) : (!torchint) -> !torchlistint
      %6 = "torch.prim.ListConstruct"(%3) : (!torchint) -> !torchlistint
      %7 = "torch.prim.ListConstruct"(%3) : (!torchint) -> !torchlistint
      %8 = "torch.aten.max_pool1d"(%arg0, %4, %5, %6, %7, %0) : (!torchvvector, !torchlistint, !torchlistint, !torchlistint, !torchlistint, !torchbool) -> !torchvvector
      "func.return"(%8) : (!torchvvector) -> ()
  }) : () -> ()
}) : () -> ()