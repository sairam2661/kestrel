"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist, !torchlist) -> !torchlist, sym_name = "torch.prim.ListConstruct$nested_lists"}> ({
  ^bb0(%arg0: !torchlist, %arg1: !torchlist):
    %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchlist, !torchlist) -> !torchlist
    %1 = "torch.prim.ListConstruct"(%arg0, %0) : (!torchlist, !torchlist) -> !torchlist
    "func.return"(%1) : (!torchlist) -> ()
  }) : () -> ()
}) : () -> ()