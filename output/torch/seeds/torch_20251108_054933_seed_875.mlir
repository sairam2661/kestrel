"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32_3x3x3x3, !torch_vtensor_i32_3x3x3x3) -> !torch_vtensor_i32_3x3x3x3, sym_name = "quantized_conv_composite"}> ({
  ^bb0(%arg0: !torch_vtensor_i32_3x3x3x3, %arg1: !torch_vtensor_i32_3x3x3x3):
    %0 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_vtensor_f32
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor_i32
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor_i32
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %2) : (!torch_vtensor_i32_3x3x3x3, !torch_vtensor_f32, !torch_vtensor_i32) -> !torch_vtensor_qint8_3x3x3x3
    %4 = "torch.aten.dequantize.tensor"(%3) : (!torch_vtensor_qint8_3x3x3x3) -> !torch_vtensor_f32_3x3x3x3
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %1) : (!torch_vtensor_i32_3x3x3x3, !torch_vtensor_f32, !torch_vtensor_i32) -> !torch_vtensor_qint8_3x3x3x3
    %6 = "torch.aten.dequantize.tensor"(%5) : (!torch_vtensor_qint8_3x3x3x3) -> !torch_vtensor_f32_3x3x3x3
    %7 = "torch.prim.ListConstruct"(%2, %2) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_list_i32
    %8 = "torch.prim.ListConstruct"(%1, %1) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_list_i32
    %9 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor_bool
    %10 = "torch.aten.convolution"(%4, %6, %9, %7, %8, %7, %9, %8, %2) : (!torch_vtensor_f32_3x3x3x3, !torch_vtensor_f32_3x3x3x3, !torch_vtensor_bool, !torch_list_i32, !torch_list_i32, !torch_list_i32, !torch_vtensor_bool, !torch_list_i32, !torch_vtensor_i32) -> !torch_vtensor_f32_3x3x3x3
    %11 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch_vtensor_i32
    %12 = "torch.aten._make_per_tensor_quantized_tensor"(%10, %0, %11) : (!torch_vtensor_f32_3x3x3x3, !torch_vtensor_f32, !torch_vtensor_i32) -> !torch_vtensor_qint8_3x3x3x3
    %13 = "torch.aten.dequantize.tensor"(%12) : (!torch_vtensor_qint8_3x3x3x3) -> !torch_vtensor_f32_3x3x3x3
    "func.return"(%13) : (!torch_vtensor_f32_3x3x3x3) -> ()
  }) : () -> ()
}) : () -> ()