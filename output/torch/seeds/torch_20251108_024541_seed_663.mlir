"builtin.module"() ({
  "func.func"() <{function_type = (!torchconstantbool, !torchconstantint, !torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "unique_combination"}> ({
  ^bb0(%arg0: !torchconstantbool, %arg1: !torchconstantint, %arg2: !torchvtensor, %arg3: !torchvtensor):
    %0 = "torch.aten.size.int"(%arg2) : (!torchvtensor) -> !torchlistint
    %1 = "torch.aten.size.int"(%arg3) : (!torchvtensor) -> !torchlistint
    %2 = "torch.aten.eq.Tensor"(%arg2, %arg3) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %3 = "torch.aten.add.Tensor"(%arg2, %arg3) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    %4 = "torch.aten._shape_as_tensor"(%arg2) : (!torchvtensor) -> !torchtensor
    %5 = "torch.aten.cat"(%arg2, %arg3) : (!torchvtensor, !torchvtensor) -> !torchvtensor
    "func.return"(%5) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()