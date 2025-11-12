"builtin.module"() ({
  "func.func"() <{function_type = (!torchaint, !torchaint, !torchaint) -> !torchaint, sym_name = "complex_combinations"}> ({
  ^bb0(%arg0: !torchaint, %arg1: !torchaint, %arg2: !torchaint):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torchaint, !torchaint) -> !torchaint
    %1 = "torch.aten.mul.Tensor"(%0, %arg2) : (!torchaint, !torchaint) -> !torchaint
    %2 = "torch.aten.sub.Tensor"(%1, %arg0) : (!torchaint, !torchaint) -> !torchaint
    %3 = "torch.aten.div.Tensor"(%2, %arg1) : (!torchaint, !torchaint) -> !torchaint
    %4 = "torch.aten.eq.Tensor"(%3, %arg2) : (!torchaint, !torchaint) -> !torchbool
    %5 = "torch.aten.item"(%4) : (!torchbool) -> !torchint
    "func.return"(%5) : (!torchint) -> ()
  }) : () -> ()
}) : () -> ()