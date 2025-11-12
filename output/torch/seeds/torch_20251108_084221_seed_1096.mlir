"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_Tensor, !torch_vtensor_Tensor, !torch_int) -> !torch_vtensor_Tensor, sym_name = "torch_unusual_sequence"}> ({
    ^bb0(%arg0: !torch_vtensor_Tensor, %arg1: !torch_vtensor_Tensor, %arg2: !torch_int):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor_Tensor, !torch_int) -> !torch_int
      %size1 = "torch.aten.size.int"(%arg0, %c1) : (!torch_vtensor_Tensor, !torch_int) -> !torch_int
      %size2 = "torch.aten.size.int"(%arg0, %c2) : (!torch_vtensor_Tensor, !torch_int) -> !torch_int
      %shape_tensor = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_Tensor) -> !torch_vtensor_Tensor
      %is_eq = "torch.aten.eq.Tensor"(%size0, %size1) : (!torch_int, !torch_int) -> !torch_bool
      %list_construct = "torch.prim.ListConstruct"(%size0, %size1, %size2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %make_per_tensor_quantized_tensor = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %c0, %c1, %list_construct) : (!torch_vtensor_Tensor, !torch_int, !torch_int, !torch_list_int) -> !torch_vtensor_Tensor
      %add_tensor = "torch.aten.add.Tensor"(%arg1, %make_per_tensor_quantized_tensor) : (!torch_vtensor_Tensor, !torch_vtensor_Tensor) -> !torch_vtensor_Tensor
      "func.return"(%add_tensor) : (!torch_vtensor_Tensor) -> ()
  }) : () -> ()
}) : () -> ()