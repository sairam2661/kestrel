"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantbool) -> !torchconstantbool, sym_name = "torch.aten.eq.Tensor$edge_case"}> ({
  ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantbool):
    %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
    "func.return"(%0) : (!torchconstantbool) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantbool) -> !torchconstantbool, sym_name = "torch.aten.eq.Tensor$non_trivial"}> ({
  ^bb0(%arg2: !torchconstantbool, %arg3: !torchconstantbool):
    %4 = "torch.constantbool"() <{value = false}> : () -> !torchconstantbool
    %5 = "torch.aten.eq.Tensor"(%arg2, %arg3) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
    %6 = "torch.aten.eq.Tensor"(%5, %4) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
    "func.return"(%6) : (!torchconstantbool) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantbool) -> !torchconstantbool, sym_name = "torch.aten.eq.Tensor$nested_calls"}> ({
  ^bb0(%arg4: !torchconstantbool, %arg5: !torchconstantbool):
    %7 = "torch.aten.eq.Tensor"(%arg4, %arg5) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
    %8 = "torch.constantbool"() <{value = false}> : () -> !torchconstantbool
    %9 = "torch.aten.eq.Tensor"(%7, %8) : (!torchconstantbool, !torchconstantbool) -> !torchconstantbool
    "func.return"(%9) : (!torchconstantbool) -> ()
  }) : () -> ()
}) : () -> ()