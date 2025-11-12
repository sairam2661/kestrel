"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchint) -> !torchvtensor, sym_name = "combined_operations"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchint):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torchint
      %1 = "torch.constant.float"() <{value = 3.0 : f64}> : () -> !torchfloat
      %2 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torchvtensor, !torchint, !torchint) -> !torchvtensor
      %3 = "torch.aten.mul.Tensor"(%2, %1) : (!torchvtensor, !torchfloat) -> !torchvtensor
      %4 = "torch.aten.abs"(%3) : (!torchvtensor) -> !torchvtensor
      "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()