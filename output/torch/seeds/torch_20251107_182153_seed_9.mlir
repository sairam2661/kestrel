"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3x4_si32, !torch_vtensor_4x5_si32) -> !torch_vtensor_7x9_si32, sym_name = "tensor_concat_view"}> ({
  ^bb0(%arg0: !torch_vtensor_3x4_si32, %arg1: !torch_vtensor_4x5_si32):
    %0 = "torch.constant.int"() <{value = 0 : i32}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i32}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %3 = "torch.aten.cat"(%arg0, %arg1, %2) : (!torch_vtensor_3x4_si32, !torch_vtensor_4x5_si32, !torch_list_int) -> !torch_vtensor_7x9_si32
    %4 = "torch.constant.int"() <{value = 7 : i32}> : () -> !torch_int
    %5 = "torch.constant.int"() <{value = 9 : i32}> : () -> !torch_int
    %6 = "torch.prim.ListConstruct"(%4, %5) : (!torch_int, !torch_int) -> !torch_list_int
    %7 = "torch.aten.view"(%3, %6) : (!torch_vtensor_7x9_si32, !torch_list_int) -> !torch_vtensor_7x9_si32
    "func.return"(%7) : (!torch_vtensor_7x9_si32) -> ()
  }) : () -> ()
}) : () -> ()