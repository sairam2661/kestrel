"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "torch.fuzzing_function"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %5 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %1) : (!torch_vtensor_0, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_0
    %6 = "torch.aten.index_select"(%arg1, %0, %5) : (!torch_vtensor_1, !torch_int, !torch_vtensor_0) -> !torch_vtensor_1
    %7 = "torch.aten.add.Tensor"(%6, %2) : (!torch_vtensor_1, !torch_float) -> !torch_vtensor_1
    %8 = "torch.aten.view"(%7, %4) : (!torch_vtensor_1, !torch_list_int) -> !torch_vtensor_2
    "func.return"(%8) : (!torch_vtensor_2) -> ()
  }) : () -> ()
}) : () -> ()