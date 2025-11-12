"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_vtensorliteral, !torch_vtensorliteral) -> !torch_vtensorliteral, sym_name = "quantized_convolution_test"}> ({
    ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_vtensorliteral, %arg2: !torch_vtensorliteral):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 1.000000e-04 : f64}> : () -> !torch_float
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %4 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch_int
      %5 = "torch.constant.float"() <{value = 1.000000e-02 : f64}> : () -> !torch_float
      %6 = "torch.constant.int"() <{value = 14 : i64}> : () -> !torch_int
      %7 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %5, %4) : (!torch_vtensorliteral, !torch_float, !torch_int) -> !torch_qint8
      %8 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %5, %3) : (!torch_vtensorliteral, !torch_float, !torch_int) -> !torch_qint8
      %9 = "torch.aten._make_per_tensor_quantized_tensor"(%arg2, %5, %6) : (!torch_vtensorliteral, !torch_float, !torch_int) -> !torch_qint8
      %10 = "torch.aten.convolution"(%7, %8, %9, %0, %0, %0, %0, %0, %0) : (!torch_qint8, !torch_qint8, !torch_qint8, !torch_int, !torch_int, !torch_int, !torch_bool, !torch_int, !torch_int) -> !torch_qint8
      %11 = "torch.aten.dequantize.self"(%10) : (!torch_qint8) -> !torch_vtensorliteral
      "func.return"(%11) : (!torch_vtensorliteral) -> ()
  }) : () -> ()
}) : () -> ()