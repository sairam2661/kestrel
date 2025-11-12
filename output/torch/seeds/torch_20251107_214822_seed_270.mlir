"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "complexSliceAndAdd"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvint
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torchvint
      %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvint
      %5 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvint
      %6 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvint
      %7 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchvint
      
      %8 = "torch.aten.slice.Tensor"(%arg0, %2, %3, %4, %6) : (!torchvtensor, !torchvint, !torchvint, !torchvint, !torchvint) -> !torchvtensor
      %9 = "torch.aten.slice.Tensor"(%arg1, %2, %3, %5, %7) : (!torchvtensor, !torchvint, !torchvint, !torchvint, !torchvint) -> !torchvtensor
      
      %10 = "torch.aten.add.Tensor"(%8, %9) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      
      "func.return"(%10) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()