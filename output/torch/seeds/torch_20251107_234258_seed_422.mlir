"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensor, !torchint, !torchbool) -> !torchvTensor, sym_name = "complex_interaction"}> ({
  ^bb0(%arg0: !torchvTensor, %arg1: !torchint, %arg2: !torchbool):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torchvTensor) -> !torchvTensor
    %1 = "torch.aten.size.int"(%0, %arg1) : (!torchvTensor, !torchint) -> !torchint
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
    %3 = "torch.aten.view"(%arg0, %1) : (!torchvTensor, !torchint) -> !torchvTensor
    %4 = "torch.aten.add.Tensor"(%arg0, %3) : (!torchvTensor, !torchvTensor) -> !torchvTensor
    %5 = "torch.aten.cat"(%4, %arg1) : (!torchvTensor, !torchint) -> !torchvTensor
    %6 = "torch.aten.item"(%1) : (!torchint) -> !torchbool
    "func.return"(%5) : (!torchvTensor) -> ()
  }) : () -> ()
}) : () -> ()