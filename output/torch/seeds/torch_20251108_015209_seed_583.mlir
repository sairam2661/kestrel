"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "complex_torch_ops"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %3 = "torch.constant.str"() <{value = "test"}> : () -> !torch_str
    %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %5 = "torch.aten.slice.Tensor"(%arg0, %0, %1) : (!torch_vtensor_0, !torch_int, !torch_int) -> !torch_vtensor_0
    %6 = "torch.aten.add.Tensor"(%arg1, %5) : (!torch_vtensor_1, !torch_vtensor_0) -> !torch_vtensor_1
    %7 = "torch.aten.view"(%6, %2) : (!torch_vtensor_1, !torch_list_int) -> !torch_vtensor_2
    "func.return"(%7) : (!torch_vtensor_2) -> ()
  }) : () -> ()
}) : () -> ()