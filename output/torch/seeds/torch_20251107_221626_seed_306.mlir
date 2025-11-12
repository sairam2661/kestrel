"builtin.module"() ({
  "func.func"() <{function_type = (!torchv16tensor, !torchv16tensor) -> !torchv16tensor, sym_name = "add_and_mul"}> ({
    ^bb0(%arg0: !torchv16tensor, %arg1: !torchv16tensor):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torchv16tensor, !torchv16tensor) -> !torchv16tensor
      %1 = "torch.aten.mul"(%0, %arg1) : (!torchv16tensor, !torchv16tensor) -> !torchv16tensor
      "func.return"(%1) : (!torchv16tensor) -> ()
  }) : () -> ()
}) : () -> ()