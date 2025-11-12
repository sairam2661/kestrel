"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "complex_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
      %3 = "torch.prim.ListConstruct"(%1, %1, %1) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %4 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2
      %5 = "torch.aten.mul"(%4, %2) : (!torch_vtensor_2, !torch_float) -> !torch_vtensor_2
      %6 = "torch.aten.where.Scalar"(%0, %5, %arg0) : (!torch_bool, !torch_vtensor_2, !torch_vtensor_0) -> !torch_vtensor_2
      "func.return"(%6) : (!torch_vtensor_2) -> ()
  }) : () -> ()
}) : () -> ()