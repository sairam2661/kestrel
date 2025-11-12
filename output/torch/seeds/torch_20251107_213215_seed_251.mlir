"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "quantize_dequantize_add"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> f32
    %1 = "torch.constant.int"() <{value = 1 : i32}> : () -> i32
    %2 = "torch.constant.int"() <{value = 128 : i32}> : () -> i32
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1) : (!torch_vtensor, f32, i32) -> !torch_qint8
    %4 = "torch.aten.dequantize.tensor"(%3) : (!torch_qint8) -> !torch_vtensor
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %2) : (!torch_vtensor, f32, i32) -> !torch_quint8
    %6 = "torch.aten.dequantize.tensor"(%5) : (!torch_quint8) -> !torch_vtensor
    %7 = "torch.aten.add.Tensor"(%4, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()