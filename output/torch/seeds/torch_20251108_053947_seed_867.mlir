"builtin.module"() ({
  "func.func"() <{function_type = (!torchv13tensor, !torchv13tensor) -> !torchv13tensor, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torchv13tensor, %arg1: !torchv13tensor):
      %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchv13int
      %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchv13int
      %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchv13int
      %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchv13int
      %c4_i64 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchv13int
      %size0 = "torch.aten.size.int"(%arg0, %c0_i64) : (!torchv13tensor, !torchv13int) -> !torchv13int
      %size1 = "torch.aten.size.int"(%arg0, %c1_i64) : (!torchv13tensor, !torchv13int) -> !torchv13int
      %list0 = "torch.prim.ListConstruct"(%size0, %size1) : (!torchv13int, !torchv13int) -> !torchv13list
      %view0 = "torch.aten.view"(%arg0, %list0) : (!torchv13tensor, !torchv13list) -> !torchv13tensor
      %add0 = "torch.aten.add.Tensor"(%view0, %arg1) : (!torchv13tensor, !torchv13tensor) -> !torchv13tensor
      %size2 = "torch.aten.size.int"(%add0, %c2_i64) : (!torchv13tensor, !torchv13int) -> !torchv13int
      %size3 = "torch.aten.size.int"(%add0, %c3_i64) : (!torchv13tensor, !torchv13int) -> !torchv13tensor
      %list1 = "torch.prim.ListConstruct"(%size2, %size3) : (!torchv13int, !torchv13int) -> !torchv13list
      %view1 = "torch.aten.view"(%add0, %list1) : (!torchv13tensor, !torchv13list) -> !torchv13tensor
      "func.return"(%view1) : (!torchv13tensor) -> ()
  }) : () -> ()
}) : () -> ()