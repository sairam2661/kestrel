"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_int) -> !torch_vtensor_type, sym_name = "unusual_tensor_ops"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_int):
      %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_type, !torch_int) -> !torch_int
      %4 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor_type, !torch_int) -> !torch_int
      %5 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_type) -> !torch_vtensor_type
      %6 = "torch.aten.add.Tensor"(%arg0, %arg0) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %7 = "torch.aten.cat"(%arg0, %arg0) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
      %8 = "torch.aten.eq.Tensor"(%3, %4) : (!torch_int, !torch_int) -> !torch_bool
      %9 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_int) -> !torch_vtensor_type
      %10 = "torch.aten.to.dtype"(%9, %1, %2, %2, %arg1) : (!torch_vtensor_type, !torch_int, !torch_bool, !torch_bool, !torch_int) -> !torch_vtensor_type
      %11 = "torch.aten._make_per_tensor_quantized_tensor"(%5, %arg0, %1, %arg0) : (!torch_vtensor_type, !torch_vtensor_type, !torch_int, !torch_vtensor_type) -> !torch_vtensor_type
      "func.return"(%11) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()