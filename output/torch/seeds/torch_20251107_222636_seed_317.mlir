"builtin.module"() ({
  "func.func"() <{function_type = (!torchmemreftensor2d, !torchmemreftensor2d) -> !torchmemreftensor2d, sym_name = "custom_op_fuzz"}> ({
  ^bb0(%arg0: !torchmemreftensor2d, %arg1: !torchmemreftensor2d):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torchmemreftensor2d, !torchbool) -> !torchint
    %2 = "torch.aten.size.int"(%arg1, %0) : (!torchmemreftensor2d, !torchbool) -> !torchint
    %3 = "torch.constant.str"() <{value = "floor"}> : () -> !torchstr
    %4 = "torch.aten.div.Tensor_mode"(%arg0, %arg1, %3) : (!torchmemreftensor2d, !torchmemreftensor2d, !torchstr) -> !torchmemreftensor2d
    %5 = "torch.aten.view"(%4, %1, %2) : (!torchmemreftensor2d, !torchint, !torchint) -> !torchmemreftensor2d
    "func.return"(%5) : (!torchmemreftensor2d) -> ()
  }) : () -> ()
}) : () -> ()