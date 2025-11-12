"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i8, !torch_vtensor_f32, !torch_vtensor_i32) -> !torch_vtensor_f32, sym_name = "dequantize_per_channel"}> ({
  ^bb0(%arg0: !torch_vtensor_i8, %arg1: !torch_vtensor_f32, %arg2: !torch_vtensor_i32):
    %0 = "torch.constant.int"() <{value = -128 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %4 = "torch.operator"(%arg0, %arg1, %arg2, %3, %0, %1, %2) <{name = "torch.quantized_decomposed.dequantize_per_channel"}> : (!torch_vtensor_i8, !torch_vtensor_f32, !torch_vtensor_i32, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_f32
    "func.return"(%4) : (!torch_vtensor_f32) -> ()
  }) : () -> ()
}) : () -> ()