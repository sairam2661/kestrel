"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensor_t, !torch_vtensor_tensor_t, !torch_constant_int_t) -> !torch_vtensor_tensor_t, sym_name = "complex_fusion"}> ({
  ^bb0(%arg0: !torch_vtensor_tensor_t, %arg1: !torch_vtensor_tensor_t, %arg2: !torch_constant_int_t):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant_int_t
    %1 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_tensor_t, !torch_vtensor_tensor_t) -> !torch_vtensor_tensor_t
    %2 = "torch.aten.view"(%1, %0) : (!torch_vtensor_tensor_t, !torch_constant_int_t) -> !torch_vtensor_tensor_t
    %3 = "torch.aten.index_select"(%arg0, %0, %2) : (!torch_vtensor_tensor_t, !torch_constant_int_t, !torch_vtensor_tensor_t) -> !torch_vtensor_tensor_t
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%3, %0, %0) : (!torch_vtensor_tensor_t, !torch_constant_int_t, !torch_constant_int_t) -> !torch_quantized_tensor_t
    %5 = "torch.aten.item"(%4) : (!torch_quantized_tensor_t) -> !torch_constant_tensor_t
    "func.return"(%5) : (!torch_constant_tensor_t) -> ()
  }) : () -> ()
}) : () -> ()