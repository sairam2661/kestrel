"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_int, !torch_vtensor_int) -> (!torch_vtensor_int, !torch_vtensor_int), sym_name = "tensor_slice_and_view"}> ({
    ^bb0(%arg0: !torch_vtensor_int, %arg1: !torch_vtensor_int):
      %dim = "torch.aten.size.int"(%arg0) : (!torch_vtensor_int) -> !torch_int
      %slice_start = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %slice_end = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %slice_step = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %sliced_tensor = "torch.aten.slice.Tensor"(%arg0, %dim, %slice_start, %slice_end, %slice_step) : (!torch_vtensor_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_int
      
      %view_dim0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %view_dim1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %viewed_tensor = "torch.aten.view"(%sliced_tensor, %view_dim0, %view_dim1) : (!torch_vtensor_int, !torch_int, !torch_int) -> !torch_vtensor_int
      
      "func.return"(%sliced_tensor, %viewed_tensor) : (!torch_vtensor_int, !torch_vtensor_int) -> ()
  }) : () -> ()
}) : () -> ()