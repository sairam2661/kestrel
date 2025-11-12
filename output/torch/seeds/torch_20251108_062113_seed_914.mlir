"builtin.module"() ({
  "func.func"() <{function_type = (!torch_shape_as_tensor, !torch_shape_as_tensor) -> !torch_shape_as_tensor, sym_name = "shape_operation$complex"}> ({
  ^bb0(%arg0: !torch_shape_as_tensor, %arg1: !torch_shape_as_tensor):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_shape_as_tensor
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_shape_as_tensor
    %2 = "torch.aten.cat"(%arg0, %arg1) : (!torch_shape_as_tensor, !torch_shape_as_tensor) -> !torch_shape_as_tensor
    %3 = "torch.aten.add.Tensor"(%2, %0) : (!torch_shape_as_tensor, !torch_shape_as_tensor) -> !torch_shape_as_tensor
    %4 = "torch.aten.slice.Tensor"(%3, %1, %0, %1) : (!torch_shape_as_tensor, !torch_shape_as_tensor, !torch_shape_as_tensor, !torch_shape_as_tensor) -> !torch_shape_as_tensor
    "func.return"(%4) : (!torch_shape_as_tensor) -> ()
  }) : () -> ()
}) : () -> ()