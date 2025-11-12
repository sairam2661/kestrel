"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint, !torchint, !torchint, !torchint, !torchint, !torchlist) -> !torchvtensor, sym_name = "custom_convolution"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchint, %arg2: !torchint, %arg3: !torchint, %arg4: !torchint, %arg5: !torchint, %arg6: !torchlist):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchint
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchint
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %5 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torchint, !torchint, !torchint) -> !torchlist
    %6 = "torch.aten.add"(%arg0, %arg1) : (!torchvtensor, !torchint) -> !torchvtensor
    %7 = "torch.aten.convolution"(%6, %arg1, %arg2, %5, %5, %5, %3, %arg6, %arg5) : (!torchvtensor, !torchint, !torchint, !torchlist, !torchlist, !torchlist, !torchbool, !torchlist, !torchint) -> !torchvtensor
    "func.return"(%7) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()