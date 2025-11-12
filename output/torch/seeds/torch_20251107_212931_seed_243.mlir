"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensor, !torch_vtensor_tensor) -> !torch_vtensor_tensor, sym_name = "tensor_comparison"}> ({
    ^bb0(%arg0: !torch_vtensor_tensor, %arg1: !torch_vtensor_tensor):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_tensor) -> !torch_list_int
      %4 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor_tensor) -> !torch_vtensor_tensor
      %5 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor_tensor, !torch_list_int) -> !torch_vtensor_tensor
      %6 = "torch.aten.eq.Tensor"(%5, %4) : (!torch_vtensor_tensor, !torch_vtensor_tensor) -> !torch_vtensor_tensor
      %7 = "func.return"(%6) : (!torch_vtensor_tensor) -> ()
    }) : () -> ()
  }) : () -> ()