"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral, !torch_aten_shape_as_tensor, !torch_aten_view, !torch_aten_make_per_tensor_quantized_tensor, !func_return) -> !torch_c_from_builtin_tensor, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensorliteral, %arg1: !torch_aten_shape_as_tensor, %arg2: !torch_aten_view, %arg3: !torch_aten_make_per_tensor_quantized_tensor, %arg4: !func_return):
    %0 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_aten_shape_as_tensor) -> !torch_aten_shape_as_tensor
    %1 = "torch.aten.view"(%arg2, %0) : (!torch_aten_view, !torch_aten_shape_as_tensor) -> !torch_aten_view
    %2 = "torch.aten._make_per_tensor_quantized_tensor"(%arg3, %1, 0.125, 0) : (!torch_aten_make_per_tensor_quantized_tensor, !torch_aten_view, f64, i32) -> !torch_aten_make_per_tensor_quantized_tensor
    %3 = "torch_c.from_builtin_tensor"(%2) : (!torch_aten_make_per_tensor_quantized_tensor) -> !torch_c_from_builtin_tensor
    "func.return"(%3) : (!torch_c_from_builtin_tensor) -> ()
  }) : () -> ()
}) : () -> ()