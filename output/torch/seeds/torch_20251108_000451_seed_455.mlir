"builtin.module"() ({
  "func.func"() <{function_type = (!torchvint32, !torchvint32, !torchvint32) -> !torchvint32, sym_name = "complex_index_select"}> ({
    ^bb0(%arg0: !torchvint32, %arg1: !torchvint32, %arg2: !torchvint32):
      %const0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvint32
      %const1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvint32
      %eq0 = "torch.aten.eq.Tensor"(%arg0, %const0) : (!torchvint32, !torchvint32) -> !torchvbool
      %item0 = "torch.aten.item"(%eq0) : (!torchvbool) -> !torchvint32
      %list0 = "torch.prim.ListConstruct"(%item0, %const1) : (!torchvint32, !torchvint32) -> !torchvlist
      %index_select0 = "torch.aten.index_select"(%arg1, %const0, %list0) : (!torchvint32, !torchvint32, !torchvlist) -> !torchvint32
      %add0 = "torch.aten.add.Tensor"(%index_select0, %arg2) : (!torchvint32, !torchvint32) -> !torchvint32
      "func.return"(%add0) : (!torchvint32) -> ()
  }) : () -> ()
}) : () -> ()