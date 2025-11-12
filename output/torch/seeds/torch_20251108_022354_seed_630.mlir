"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_any_dims) -> !torch_vtensor_any_dims, sym_name = "torch.aten.slice.Tensor$complex"}> ({
  ^bb0(%arg0: !torch_vtensor_any_dims):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2) : (!torch_vtensor_any_dims, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_any_dims
    %4 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %5 = "torch.aten.view"(%3, %4) : (!torch_vtensor_any_dims, !torch_bool) -> !torch_vtensor_any_dims
    "func.return"(%5) : (!torch_vtensor_any_dims) -> ()
  }) : () -> ()
}) : () -> ()