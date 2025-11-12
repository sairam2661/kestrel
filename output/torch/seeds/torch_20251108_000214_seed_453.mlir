"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_shape_tensor, !torch_vtensor_shape_tensor) -> !torch_vtensor_shape_tensor, sym_name = "torch.aten.cat.unusual_shape"}> ({
  ^bb0(%arg0: !torch_vtensor_shape_tensor, %arg1: !torch_vtensor_shape_tensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torch_vtensor_shape_tensor, !torch_vtensor_shape_tensor, !torch_int) -> !torch_vtensor_shape_tensor
    "func.return"(%1) : (!torch_vtensor_shape_tensor) -> ()
  }) : () -> ()
}) : () -> ()