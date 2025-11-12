"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1032, !torch_vtensor_1032) -> !torch_vtensor_1032, sym_name = "custom_slice_and_concat"}> ({
    ^bb0(%arg0: !torch_vtensor_1032, %arg1: !torch_vtensor_1032):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      
      %6 = "torch.aten.slice.Tensor"(%arg0, %1, %2, %0, %3) : (!torch_vtensor_1032, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1032
      %7 = "torch.aten.slice.Tensor"(%arg1, %2, %3, %0, %4) : (!torch_vtensor_1032, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1032
      
      %8 = "torch.aten.cat"(%6, %7) : (!torch_vtensor_1032, !torch_vtensor_1032) -> !torch_vtensor_1032
      "func.return"(%8) : (!torch_vtensor_1032) -> ()
  }) : () -> ()
}) : () -> ()