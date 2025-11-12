"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_529883617_i32, !torch_vtensor_529883617_i32, !torch_vtensor_529883617_i32) -> !torch_vtensor_529883617_i32, sym_name = "torch.aten._make_per_tensor_quantized_tensor$basic$3"}> ({
  ^bb0(%arg0: !torch_vtensor_529883617_i32, %arg1: !torch_vtensor_529883617_i32, %arg2: !torch_vtensor_529883617_i32):
    %0 = "torch.constant.float"() <{value = 1.0 : f32}> : () -> !torch_float
    %1 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %arg1, %arg2) : (!torch_vtensor_529883617_i32, !torch_float, !torch_vtensor_529883617_i32, !torch_vtensor_529883617_i32) -> !torch_vtensor_529883617_i32
    "func.return"(%1) : (!torch_vtensor_529883617_i32) -> ()
  }) : () -> ()
}) : () -> ()