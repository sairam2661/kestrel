"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist, !torchlist) -> !torchlist, sym_name = "interleave_lists"}> ({
    ^bb0(%arg0: !torchlist, %arg1: !torchlist):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
      %2 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchlist, !torchlist) -> !torchlist
      %3 = "torch.aten.size.int"(%2) : (!torchlist) -> !torchint
      %4 = "torch.aten._shape_as_tensor"(%3) : (!torchint) -> !torchtensor
      %5 = "torch.aten.view"(%4, "shape=[1]") : (!torchtensor) -> !torchtensor
      %6 = "torch.aten.item"(%5) : (!torchtensor) -> !torchint
      "func.return"(%2) : (!torchlist) -> ()
  }) : () -> ()
}) : () -> ()