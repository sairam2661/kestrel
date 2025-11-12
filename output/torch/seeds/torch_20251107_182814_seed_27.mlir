"builtin.module"() ({
  "func.func"() <{function_type = (!torchivtensor, !torchivtensor) -> !torchivtensor, sym_name = "custom_math_op"}> ({
  ^bb0(%arg0: !torchivtensor, %arg1: !torchivtensor):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torchivtensor, !torchivtensor) -> !torchivtensor
    %1 = "torch.aten.mul"(%0, %arg0) : (!torchivtensor, !torchivtensor) -> !torchivtensor
    %2 = "torch.aten.sub"(%1, %arg1) : (!torchivtensor, !torchivtensor) -> !torchivtensor
    "func.return"(%2) : (!torchivtensor) -> ()
  }) : () -> ()
}) : () -> ()