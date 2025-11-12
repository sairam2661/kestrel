"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2d, !torch_vtensor_1d) -> !torch_vtensor_2d, sym_name = "fuzz_example"}> ({
    ^bb0(%arg0: !torch_vtensor_2d, %arg1: !torch_vtensor_1d):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %3 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %4 = "torch.constant.str"() <{value = "reflect"}> : () -> !torch_str
      %5 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
      %6 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %1) : (!torch_vtensor_2d, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_2d
      %7 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor_2d, !torch_int, !torch_vtensor_1d) -> !torch_vtensor_2d
      %8 = "torch.aten.view"(%arg0, %5) : (!torch_vtensor_2d, !torch_list_int) -> !torch_vtensor_2d
      %9 = "torch.aten.add.Tensor"(%6, %7, %2) : (!torch_vtensor_2d, !torch_vtensor_2d, !torch_bool) -> !torch_vtensor_2d
      "func.return"(%9) : (!torch_vtensor_2d) -> ()
  }) : () -> ()
}) : () -> ()