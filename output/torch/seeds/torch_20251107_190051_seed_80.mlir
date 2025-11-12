"builtin.module"() ({
  "func.func"() <{function_type = (!torchrantensor, !torchrantensor) -> !torchrantensor, sym_name = "torch.aten.cat$basic"}> ({
  ^bb0(%arg0: !torchrantensor, %arg1: !torchrantensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchrantensor
    %1 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchrantensor, !torchrantensor, !torchrantensor) -> !torchrantensor
    "func.return"(%1) : (!torchrantensor) -> ()
  }) : () -> ()
}) : () -> ()