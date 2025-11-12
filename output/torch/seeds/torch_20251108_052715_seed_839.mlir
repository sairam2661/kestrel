"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist, !torchlist) -> !torchlist, sym_name = "example_func"}> ({
    ^bb0(%arg0: !torchlist, %arg1: !torchlist):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torchlist, !torchlist) -> !torchlist
      %1 = "torch.aten.mul"(%0, %arg0) : (!torchlist, !torchlist) -> !torchlist
      %2 = "torch.aten.sin"(%1) : (!torchlist) -> !torchlist
      %3 = "torch.aten.cos"(%arg1) : (!torchlist) -> !torchlist
      %4 = "torch.aten.add"(%2, %3) : (!torchlist, !torchlist) -> !torchlist
      "func.return"(%4) : (!torchlist) -> ()
  }) : () -> ()
}) : () -> ()