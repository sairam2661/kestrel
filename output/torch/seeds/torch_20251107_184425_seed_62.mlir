"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complex_operation"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
      %c4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchint
      
      %list0 = "torch.prim.ListConstruct"(%c1, %c2) : (!torchint, !torchint) -> !torchlist
      %list1 = "torch.prim.ListConstruct"(%c3, %c4) : (!torchint, !torchint) -> !torchlist
      
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torchvtensor, !torchint) -> !torchint
      %size1 = "torch.aten.size.int"(%arg0, %c1) : (!torchvtensor, !torchint) -> !torchint
      
      %index_select0 = "torch.aten.index_select"(%arg0, %c0, %list0) : (!torchvtensor, !torchint, !torchlist) -> !torchvtensor
      %index_select1 = "torch.aten.index_select"(%arg0, %c1, %list1) : (!torchvtensor, !torchint, !torchlist) -> !torchvtensor
      
      %cat0 = "torch.aten.cat"(%index_select0, %index_select1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      
      "func.return"(%cat0) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()