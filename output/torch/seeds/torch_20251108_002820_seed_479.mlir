"builtin.module"() ({
  "func.func"() <{function_type = (!torchvtensor, !torchvtensor) -> !torchvtensor, sym_name = "combined_operations"}> ({
    ^bb0(%arg0: !torchvtensor, %arg1: !torchvtensor):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torchbool
      %1 = "torch.constant.float"() <{value = 1.5}> : () -> !torchfloat
      %2 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
      %3 = "torch.aten.size.int"(%arg0) : (!torchvtensor) -> !torchint
      %4 = "torch.prim.ListConstruct"(%1, %3, %1) : (!torchfloat, !torchint, !torchfloat) -> !torchlist
      %5 = "torch.aten.view"(%arg0, %4) : (!torchvtensor, !torchlist) -> !torchvtensor
      %6 = "torch.aten.cat"(%arg1, %5) : (!torchvtensor, !torchvtensor) -> !torchvtensor
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%6, %1, %1, %1) : (!torchvtensor, !torchfloat, !torchfloat, !torchfloat) -> !torchvtensor
      %8 = "torch.aten.item"(%7) : (!torchvtensor) -> !torchany
      %9 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torchvtensor, !torchvtensor) -> !torchbool
      %10 = "torch.aten.slice.Tensor"(%arg0, %1, %1, %3) : (!torchvtensor, !torchfloat, !torchfloat, !torchint) -> !torchvtensor
      %11 = "torch.aten._shape_as_tensor"(%10) : (!torchvtensor) -> !torchvtensor
      "func.return"(%11) : (!torchvtensor) -> ()
  }) : () -> ()
}) : () -> ()