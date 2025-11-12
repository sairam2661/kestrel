"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2d, !torch_vtensor_2d) -> !torch_vtensor_2d, sym_name = "torch_aten_add_divide_multiply"}> ({
    ^bb0(%arg0: !torch_vtensor_2d, %arg1: !torch_vtensor_2d):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_2d, !torch_vtensor_2d) -> !torch_vtensor_2d
      %1 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch_float
      %2 = "torch.aten.div"(%0, %1) : (!torch_vtensor_2d, !torch_float) -> !torch_vtensor_2d
      %3 = "torch.constant.float"() <{value = 3.000000e+00 : f64}> : () -> !torch_float
      %4 = "torch.aten.mul"(%2, %3) : (!torch_vtensor_2d, !torch_float) -> !torch_vtensor_2d
      "func.return"(%4) : (!torch_vtensor_2d) -> ()
  }) : () -> ()
}) : () -> ()