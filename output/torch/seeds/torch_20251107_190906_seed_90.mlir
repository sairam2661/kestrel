"builtin.module"() ({
  "func.func"() <{function_type = (!torchv0tensor, !torchi1, !torchv0tensor, !torchlist, !torchlist, !torchlist, !torchbool, !torchlist, !torchi64) -> !torchv0tensor, sym_name = "torch_convolution"}> ({
  ^bb0(%arg0: !torchv0tensor, %arg1: !torchi1, %arg2: !torchv0tensor, %arg3: !torchlist, %arg4: !torchlist, %arg5: !torchlist, %arg6: !torchbool, %arg7: !torchlist, %arg8: !torchi64):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchi64
    %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torchi64
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torchi64, !torchi64) -> !torchlist
    %3 = "torch.prim.ListConstruct"(%1, %0) : (!torchi64, !torchi64) -> !torchlist
    %4 = "torch.prim.ListConstruct"() : () -> !torchlist
    %5 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %6 = "torch.aten.convolution"(%arg0, %arg2, %arg1, %arg3, %arg4, %arg5, %arg6, %arg7, %arg8) : (!torchv0tensor, !torchv0tensor, !torchi1, !torchlist, !torchlist, !torchlist, !torchbool, !torchlist, !torchi64) -> !torchv0tensor
    "func.return"(%6) : (!torchv0tensor) -> ()
  }) : () -> ()
}) : () -> ()