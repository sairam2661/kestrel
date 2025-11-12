"builtin.module"() ({
  "func.func"() <{function_type = (!torchv010tensor, !torchv010tensor, !torchv010tensor) -> !torchv010tensor, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torchv010tensor, %arg1: !torchv010tensor, %arg2: !torchv010tensor):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torchv010tensor, !torchv010tensor) -> !torchv010tensor
    %1 = "torch.aten.mul"(%0, %arg2) : (!torchv010tensor, !torchv010tensor) -> !torchv010tensor
    %2 = "torch.aten.div"(%1, %arg0) : (!torchv010tensor, !torchv010tensor) -> !torchv010tensor
    %3 = "torch.aten.sub"(%2, %arg1) : (!torchv010tensor, !torchv010tensor) -> !torchv010tensor
    "func.return"(%3) : (!torchv010tensor) -> ()
  }) : () -> ()
}) : () -> ()