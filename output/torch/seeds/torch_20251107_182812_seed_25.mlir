"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2d) -> !torch_vtensor_2d, sym_name = "matrix_transform"}> ({
    ^bb0(%arg0: !torch_vtensor_2d):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %3 = "torch.aten.transpose"(%arg0, %0, %1) : (!torch_vtensor_2d, !torch_int, !torch_int) -> !torch_vtensor_2d
      %4 = "torch.aten.mul.Scalar"(%3, %2) : (!torch_vtensor_2d, !torch_float) -> !torch_vtensor_2d
      "func.return"(%4) : (!torch_vtensor_2d) -> ()
  }) : () -> ()
}) : () -> ()