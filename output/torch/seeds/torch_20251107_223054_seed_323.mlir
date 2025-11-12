"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "complex_quantized_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type, %arg2: !torch_vtensor_type):
    %0 = "torch.constant.float"() <{value = 1.25 : f64}> : () -> !torch_vtensor_type
    %1 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch_vtensor_type
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor_type
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1) : (!torch_vtensor_type, !torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %1) : (!torch_vtensor_type, !torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    %6 = "torch.aten.eq.Tensor"(%5, %arg2) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    "func.return"(%6) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()