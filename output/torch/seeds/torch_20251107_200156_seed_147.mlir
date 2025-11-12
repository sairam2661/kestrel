"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_tensor_type, !torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type, sym_name = "custom_complex_op"}> ({
    ^bb0(%arg0: !torch_vtensor_tensor_type, %arg1: !torch_vtensor_tensor_type):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.float"() <{value = 3.000000e+01 : f64}> : () -> !torch_float
      %4 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor_tensor_type, !torch_int) -> !torch_int
      %5 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor_tensor_type, !torch_int) -> !torch_int
      %6 = "torch.prim.ListConstruct"(%4, %5) : (!torch_int, !torch_int) -> !torch_list_int
      %7 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type
      %8 = "torch.aten.size.int"(%arg1, %0) : (!torch_vtensor_tensor_type, !torch_int) -> !torch_int
      %9 = "torch.aten.size.int"(%arg1, %1) : (!torch_vtensor_tensor_type, !torch_int) -> !torch_int
      %10 = "torch.prim.ListConstruct"(%8, %9) : (!torch_int, !torch_int) -> !torch_list_int
      %11 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor_tensor_type, !torch_vtensor_tensor_type) -> !torch_vtensor_tensor_type
      %12 = "torch.aten.add.Tensor"(%11, %3) : (!torch_vtensor_tensor_type, !torch_float) -> !torch_vtensor_tensor_type
      "func.return"(%12) : (!torch_vtensor_tensor_type) -> ()
  }) : () -> ()
}) : () -> ()