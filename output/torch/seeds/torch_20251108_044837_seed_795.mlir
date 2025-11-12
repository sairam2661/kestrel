"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> (!torch_vtensor_type, !torch_vtensor_type), sym_name = "torch_convolution_transposed"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.none"() : () -> !torch_none
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %4 = "torch.prim.ListConstruct"(%2, %2) : (!torch_int, !torch_int) -> !torch_list_int
    %5 = "torch.prim.ListConstruct"(%3, %3) : (!torch_int, !torch_int) -> !torch_list_int
    %6 = "torch.aten.convolution"(%arg0, %arg1, %1, %4, %5, %5, %0, %4, %3) : (!torch_vtensor_type, !torch_vtensor_type, !torch_none, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool, !torch_list_int, !torch_int) -> !torch_vtensor_type
    %7 = "torch.aten.add"(%arg0, %6) : (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type
    "func.return"(%6, %7) : (!torch_vtensor_type, !torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()