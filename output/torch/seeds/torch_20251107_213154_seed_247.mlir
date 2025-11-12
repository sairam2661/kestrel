"sbuiltin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensor_tensor, !torch_vtensor_tensor_tensor) -> !torch_vtensor_tensor_tensor, sym_name = "fuzzy_tensor_ops"}> ({
  ^bb0(%arg0: !torch_vtensor_tensor_tensor, %arg1: !torch_vtensor_tensor_tensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_tensor_tensor) -> !torch_vtensor_tensor_tensor
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor_tensor_tensor) -> !torch_vtensor_tensor_tensor
    %3 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_tensor_tensor, !torch_vtensor_tensor_tensor) -> !torch_vtensor_tensor_tensor
    %4 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_tensor_tensor, !torch_vtensor_tensor_tensor) -> !torch_vtensor_tensor_tensor
    %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor_tensor_tensor, !torch_vtensor_tensor_tensor) -> !torch_vtensor_tensor_tensor
    "func.return"(%5) : (!torch_vtensor_tensor_tensor) -> ()
  }) : () -> ()
}) : () -> ()