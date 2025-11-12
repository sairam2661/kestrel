"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "dynamic_view_combination"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor, %arg2: !torchvtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvtensor
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvtensor
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvtensor
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchvtensor
      %c4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchvtensor
      %c5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torchvtensor
      %c6 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torchvtensor
      %c7 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torchvtensor
      %c8 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torchvtensor
      %c9 = "torch.constant.int"() <{value = 9 : i64}> : () -> !torchvtensor
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %size1 = "torch.aten.size.int"(%arg0, %c1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %size2 = "torch.aten.size.int"(%arg0, %c2) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %list0 = "torch.prim.ListConstruct"(%size0, %size1, %size2) : (!torchvtensor, !torchvtensor, !torchvtensor) -> !torchvtensor
      %viewed0 = "torch.aten.view"(%arg1, %list0) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %viewed1 = "torch.aten.view"(%arg2, %list0) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %cat0 = "torch.aten.cat"(%viewed0, %viewed1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      "func.return"(%cat0) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()