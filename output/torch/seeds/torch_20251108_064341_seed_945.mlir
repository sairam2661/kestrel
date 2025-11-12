"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_lit, !torch_list_int, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool) -> !torch_vtensor_lit, sym_name = "fuzzing_complex_operation"}> ({
  ^bb0(%arg0: !torch_vtensor_lit, %arg1: !torch_list_int, %arg2: !torch_list_int, %arg3: !torch_list_int, %arg4: !torch_list_int, %arg5: !torch_bool):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list_int
    %4 = "torch.prim.ListConstruct"(%1) : (!torch_int) -> !torch_list_int
    %5 = "torch.prim.ListConstruct"(%2) : (!torch_int) -> !torch_list_int
    %6 = "torch.aten.max_pool1d"(%arg0, %arg1, %arg2, %arg3, %arg4, %arg5) : (!torch_vtensor_lit, !torch_list_int, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool) -> !torch_vtensor_lit
    %7 = "torch.aten.slice.Tensor"(%6, %0, %1, %2) : (!torch_vtensor_lit, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_lit
    "func.return"(%7) : (!torch_vtensor_lit) -> ()
  }) : () -> ()
}) : () -> ()