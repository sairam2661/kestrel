"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "mixed_dtype_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %int_tensor = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
    %bool_tensor = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %shape_tensor = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
    %per_tensor_quantized = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %int_tensor, %int_tensor, %bool_tensor) : (!torch_vtensor, !torch_int, !torch_int, !torch_bool) -> !torch_vtensor
    %shape_as_tensor = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %item = "torch.aten.item"(%arg0) : (!torch_vtensor) -> i64
    "func.return"(%per_tensor_quantized) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()