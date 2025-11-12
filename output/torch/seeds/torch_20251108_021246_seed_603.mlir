"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1, !torch_vtensor_2, !torch_vtensor_3) -> !torch_vtensor_4, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor_1, %arg1: !torch_vtensor_2, %arg2: !torch_vtensor_3):
    %0 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.prim.ListConstruct"(%0, %1, %2, %3) : (!torch_int, !torch_int, !torch_bool, !torch_none) -> !torch_list_int
    %5 = "torch.aten.reshape"(%arg0, %4) : (!torch_vtensor_1, !torch_list_int) -> !torch_vtensor_4
    %6 = "torch.aten.add.Tensor"(%5, %arg2, %1) : (!torch_vtensor_4, !torch_vtensor_3, !torch_int) -> !torch_vtensor_4
    %7 = "torch.aten.abs"(%6) : (!torch_vtensor_4) -> !torch_vtensor_4
    "func.return"(%7) : (!torch_vtensor_4) -> ()
  }) : () -> ()
}) : () -> ()