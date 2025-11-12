"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "tensor_manipulation"}> ({
  ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> !torchint
    %1 = "torch.aten.size.int"(%arg1) : (!torchvtensor) -> !torchint
    %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torchint) -> !torchvtensor
    %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torchint) -> !torchvtensor
    %4 = "torch.aten.cat"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %5 = "func.return"(%4) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()