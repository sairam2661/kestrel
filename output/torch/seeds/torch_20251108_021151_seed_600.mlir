"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1, !torch_int_2) -> !torch_vtensor_3, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1, %arg2: !torch_int_2):
    %0 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch_float
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.aten.slice.Tensor"(%arg0, %arg2, %1, %1) : (!torch_vtensor_0, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_0
    %3 = "torch.aten.index_select"(%arg1, %arg2, %2) : (!torch_vtensor_1, !torch_int, !torch_vtensor_0) -> !torch_vtensor_1
    %4 = "torch.aten.view"(%3, %arg2) : (!torch_vtensor_1, !torch_int) -> !torch_vtensor_3
    "func.return"(%4) : (!torch_vtensor_3) -> ()
  }) : () -> ()
}) : () -> ()