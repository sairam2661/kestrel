"builtin.module"() ({
  "func.func"() <{function_type = (!torchint, !torchint) -> !torchint, sym_name = "torch.aten.add$torchint"}> ({
  ^bb0(%arg0: !torchint, %arg1: !torchint):
    %0 = "arith.addi"(%arg0, %arg1) : (!torchint, !torchint) -> !torchint
    "func.return"(%0) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()