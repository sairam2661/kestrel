"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_Type, !torch_vtensor_Type) -> !torch_vtensor_Type, sym_name = "torch_aten_mm"}> ({
  ^bb0(%arg0: !torch_vtensor_Type, %arg1: !torch_vtensor_Type):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %4 = "torch.constant.float32"() <{value = 1.000000e+00 : f32}> : () -> !torch_float32
    %5 = "torch.constant.float32"() <{value = 2.000000e+00 : f32}> : () -> !torch_float32
    %6 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %7 = "torch.prim.ListConstruct"(%2, %3) : (!torch_int, !torch_int) -> !torch_list_int
    %8 = "torch.prim.ListConstruct"(%4, %5) : (!torch_float32, !torch_float32) -> !torch_list_float32
    %9 = "torch.aten.mm"(%arg0, %arg1) : (!torch_vtensor_Type, !torch_vtensor_Type) -> !torch_vtensor_Type
    "func.return"(%9) : (!torch_vtensor_Type) -> ()
  }) : () -> ()
}) : () -> ()