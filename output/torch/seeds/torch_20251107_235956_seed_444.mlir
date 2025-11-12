"builtin.module"() ({
  "func.func"() <{function_type = (!torchhtable, !torchhtable) -> !torchhtable, sym_name = "torch.aten.cat$unusual"}> ({
  ^bb0(%arg0: !torchhtable, %arg1: !torchhtable):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %1 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torchhtable, !torchhtable) -> !torchlist
    %2 = "torch.aten.cat"(%1, %0) : (!torchlist, !torchint) -> !torchhtable
    "func.return"(%2) : (!torchhtable) -> ()
  }) : () -> ()
}) : () -> ()