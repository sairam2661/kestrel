"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist, !torchlist) -> !torchlist, sym_name = "nested_list_operations"}> ({
    ^bb0(%arg0: !torchlist, %arg1: !torchlist):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
      %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchlist, !torchlist) -> !torchlist
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torchbool, !torchlist) -> !torchlist
      %3 = "torch.prim.ListConstruct"(%2, %2) : (!torchlist, !torchlist) -> !torchlist
      "func.return"(%3) : (!torchlist) -> ()
  }) : () -> ()
}) : () -> ()