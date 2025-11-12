"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32, sym_name = "torch_complex_operation"}> ({
    ^bb0(%arg0: !torch_vtensor_i32, %arg1: !torch_vtensor_i32):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %0) : (!torch_vtensor_i32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_i32
      %4 = "torch.aten.slice.Tensor"(%arg1, %0, %1, %0) : (!torch_vtensor_i32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_i32
      %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor_i32, !torch_vtensor_i32) -> !torch_vtensor_i32
      %6 = "torch.aten.view"(%5, %2) : (!torch_vtensor_i32, !torch_list_int) -> !torch_vtensor_i32
      "func.return"(%6) : (!torch_vtensor_i32) -> ()
  }) : () -> ()
}) : () -> ()