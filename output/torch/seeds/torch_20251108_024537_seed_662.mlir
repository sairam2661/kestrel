"builtin.module"() ({
  "func.func"() <{function_type = (!torchvint8tensor, !torchvint8tensor, !torchvint8tensor) -> !torchvfloattensor, sym_name = "fuzz_vtensor_quant_dequant"}> ({
  ^bb0(%arg0: !torchvint8tensor, %arg1: !torchvint8tensor, %arg2: !torchvint8tensor):
    %0 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torchvfloattensor
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torchvinttensor
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torchvinttensor
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %2) : (!torchvint8tensor, !torchvfloattensor, !torchvinttensor) -> !torchvqint8tensor
    %4 = "torch.aten.dequantize.tensor"(%3) : (!torchvqint8tensor) -> !torchvfloattensor
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %1) : (!torchvint8tensor, !torchvfloattensor, !torchvinttensor) -> !torchvqint8tensor
    %6 = "torch.aten.dequantize.tensor"(%5) : (!torchvqint8tensor) -> !torchvfloattensor
    %7 = "torch.aten.add.Tensor"(%4, %6) : (!torchvfloattensor, !torchvfloattensor) -> !torchvfloattensor
    %8 = "torch.aten._make_per_tensor_quantized_tensor"(%arg2, %0, %1) : (!torchvint8tensor, !torchvfloattensor, !torchvinttensor) -> !torchvqint8tensor
    %9 = "torch.aten.dequantize.tensor"(%8) : (!torchvqint8tensor) -> !torchvfloattensor
    %10 = "torch.aten.add.Tensor"(%7, %9) : (!torchvfloattensor, !torchvfloattensor) -> !torchvfloattensor
    "func.return"(%10) : (!torchvfloattensor) -> ()
  }) : () -> ()
}) : () -> ()