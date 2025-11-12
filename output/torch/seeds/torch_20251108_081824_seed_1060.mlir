"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "custom_op"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
    %2 = "torch.aten.add"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %3 = "torch.aten.mul"(%2, %0) : (!torchvtensor, !torchint) -> !torchvtensor
    %4 = "torch.aten.add"(%3, %1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()