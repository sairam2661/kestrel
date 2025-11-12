"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "torch.aten.cat$complex"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %1 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torchvtensor, !torchvtensor, !torchint) -> !torchvtensor
    "func.return"(%1) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()