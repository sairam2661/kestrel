"builtin.module"() ({
  "func.func"() <{function_type = (!torchlist, !torchlist) -> !torchlist, sym_name = "torch.aten.cat$complex"}> ({
  ^bb0(%arg0: !torchlist, %arg1: !torchlist):
    %0 = "torch.aten.cat"(%arg0, %arg1) : (!torchlist, !torchlist) -> !torchlist
    "func.return"(%0) : (!torchlist) -> ()
  }) : () -> ()
}) : () -> ()