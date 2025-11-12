"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_5x5_f32, !torch_vtensor_5x5_f32, !torch_int) -> !torch_vtensor_5x5_f32, sym_name = "quantize_dequantize_add"}> ({
  ^bb0(%arg0: !torch_vtensor_5x5_f32, %arg1: !torch_vtensor_5x5_f32, %arg2: !torch_int):
    %0 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
    %1 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_int
    %2 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1) : (!torch_vtensor_5x5_f32, !torch_float, !torch_int) -> !torch_vtensor_5x5_qint8
    %3 = "torch.aten.dequantize.tensor"(%2) : (!torch_vtensor_5x5_qint8) -> !torch_vtensor_5x5_f32
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %1) : (!torch_vtensor_5x5_f32, !torch_float, !torch_int) -> !torch_vtensor_5x5_qint8
    %5 = "torch.aten.dequantize.tensor"(%4) : (!torch_vtensor_5x5_qint8) -> !torch_vtensor_5x5_f32
    %6 = "torch.aten.add.Tensor"(%3, %5) : (!torch_vtensor_5x5_f32, !torch_vtensor_5x5_f32) -> !torch_vtensor_5x5_f32
    "func.return"(%6) : (!torch_vtensor_5x5_f32) -> ()
  }) : () -> ()
}) : () -> ()