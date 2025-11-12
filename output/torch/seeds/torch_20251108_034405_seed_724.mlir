"builtin.module"() ({
  "func.func"() <{function_type = (!torchv2tensor, !torchint, !torchfloat) -> !torchv2tensor, sym_name = "quantize_dequantize"}> ({
  ^bb0(%arg0: !torchv2tensor, %arg1: !torchint, %arg2: !torchfloat):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torchv2tensor) -> !torchv2tensor
    %1 = "torch.aten.size.int"(%arg0) : (!torchv2tensor) -> !torchint
    %2 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg2, %arg1) : (!torchv2tensor, !torchfloat, !torchint) -> !torchv2tensor
    %3 = "torch.aten.dequantize.tensor"(%2) : (!torchv2tensor) -> !torchv2tensor
    %4 = "torch.aten.add.Tensor"(%3, %3) : (!torchv2tensor, !torchv2tensor) -> !torchv2tensor
    "func.return"(%4) : (!torchv2tensor) -> ()
  }) : () -> ()
}) : () -> ()