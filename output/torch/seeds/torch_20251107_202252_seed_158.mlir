"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "tensor_interleave_fuzz"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %c4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchint
      %c5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torchint
      %c6 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torchint
      %c7 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torchint
      %list0 = "torch.prim.ListConstruct"(%c0, %c2, %c4, %c6) : (!torchint, !torchint, !torchint, !torchint) -> !torchlist
      %list1 = "torch.prim.ListConstruct"(%c1, %c3, %c5, %c7) : (!torchint, !torchint, !torchint, !torchint) -> !torchlist
      %indexed0 = "torch.aten.index_select"(%arg0, %c0, %list0) : (!torchvtensor, !torchint, !torchlist) -> !torchvtensor
      %indexed1 = "torch.aten.index_select"(%arg1, %c0, %list1) : (!torchvtensor, !torchint, !torchlist) -> !torchvtensor
      %concat = "torch.aten.cat"(%indexed0, %indexed1, %c1) : (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor
      "func.return"(%concat) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()