"builtin.module"() ({
  "func.func"() <{function_type = () -> !torchvtensor, sym_name = "complex_addition"}> ({
    %0 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchvtensor
    %1 = "torch.constant.float"() <{value = 2.71 : f64}> : () -> !torchvtensor
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvtensor
    %4 = "torch.prim.NumToTensor.Scalar"(%3) : (!torchvtensor) -> !torchvtensor
    %5 = "torch.aten.add.Tensor"(%2, %4) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()