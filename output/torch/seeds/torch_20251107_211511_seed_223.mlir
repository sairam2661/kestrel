"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantbool) -> !torchconstantbool, sym_name = "torch.aten.and"}> ({
    ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantbool):
    %0 = "torch.aten.and"(%arg0, %arg1) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
    "func.return"(%0) : (!torchconstantbool) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantbool) -> !torchconstantbool, sym_name = "torch.aten.or"}> ({
    ^bb0(%arg2: !torchconstantbool, %arg3: !torchconstantbool):
    %1 = "torch.aten.or"(%arg2, %arg3) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
    "func.return"(%1) : (!torchconstantbool) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantbool) -> !torchconstantbool, sym_name = "torch.aten.xor"}> ({
    ^bb0(%arg4: !torchconstantbool, %arg5: !torchconstantbool):
    %2 = "torch.aten.xor"(%arg4, %arg5) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
    "func.return"(%2) : (!torchconstantbool) -> ()
  }) : () -> ()
}) : () -> ()