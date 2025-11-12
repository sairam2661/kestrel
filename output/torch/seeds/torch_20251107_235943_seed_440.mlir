"builtin.module"() ({
  "func.func"() <{function_type = (!torchv16tensor, !torchv16tensor) -> !torchv16tensor, sym_name = "torch.aten.add$unusual"}> ({
  ^bb0(%arg0: !torchv16tensor, %arg1: !torchv16tensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchint, !torchint, !torchint) -> !torchlist
    %4 = "torch.aten.add"(%arg0, %arg1) : (!torchv16tensor, !torchv16tensor) -> !torchv16tensor
    %5 = "torch.aten.index_select"(%4, %0, %2) : (!torchv16tensor, !torchint, !torchint) -> !torchv16tensor
    "func.return"(%5) : (!torchv16tensor) -> ()
  }) : () -> ()
}) : () -> ()