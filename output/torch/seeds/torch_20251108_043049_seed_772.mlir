"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_s32, !torch_vtensor_s32) -> !torch_vtensor_s32, sym_name = "mixed_dialects"}> ({
    ^bb0(%arg0: !torch_vtensor_s32, %arg1: !torch_vtensor_s32):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
      %2 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_s32, !torch_bool) -> i32
      %3 = "torch.aten._make_per_tensor_quantized_tensor"() <{value = dense<1> : tensor<1xi8>, scale = 1.0 : f32, zero_point = 0 : i32, dtype = "torch.qint8"}> : () -> !torch_vtensor_qint8
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_s32, !torch_vtensor_s32) -> !torch_vtensor_s32
      %5 = "torch.aten.item"(%2) : (i32) -> i32
      "func.return"(%4) : (!torch_vtensor_s32) -> ()
  }) : () -> ()
}) : () -> ()