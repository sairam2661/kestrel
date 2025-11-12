"builtin.module"() ({
  "func.func"() <{function_type = (!torchvTensor, !torchvTensor) -> !torchvTensor, sym_name = "torch_fuzz"}> ({
  ^bb0(%arg0: !torchvTensor, %arg1: !torchvTensor):
    %0 = "torch.constant.str"() <{value = "test"}> : () -> !torchstr
    %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torchfloat
    %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torchfloat) -> !torchvTensor
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %2, %1, %1) : (!torchvTensor, !torchvTensor, !torchfloat, !torchfloat) -> !torchvTensor
    %4 = "torch.aten.cat"(%arg0, %3) : (!torchvTensor, !torchvTensor) -> !torchvTensor
    %5 = "torch.aten._shape_as_tensor"(%4) : (!torchvTensor) -> !torchvTensor
    %6 = "torch.aten.slice.Tensor"(%5, %2, %2, %2) : (!torchvTensor, !torchvTensor, !torchvTensor, !torchvTensor) -> !torchvTensor
    %7 = "torch.aten.view"(%6, %2) : (!torchvTensor, !torchvTensor) -> !torchvTensor
    %8 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchint
    %9 = "torch.aten.eq.Tensor"(%7, %8) : (!torchvTensor, !torchint) -> !torchvTensor
    "func.return"(%9) : (!torchvTensor) -> ()
  }) : () -> ()
}) : () -> ()