"builtin.module"() ({
  "func.func"() <{function_type = (!torchvlist, !torchvlist) -> !torchvlist, sym_name = "list_concatenate"}> ({
  ^bb0(%arg0: !torchvlist, %arg1: !torchvlist):
    %0 = "torch.aten.cat"(%arg0, %arg1) : (!torchvlist, !torchvlist) -> !torchvlist
    "func.return"(%0) : (!torchvlist) -> ()
  }) : () -> ()
}) : () -> ()