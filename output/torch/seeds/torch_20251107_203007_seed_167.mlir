"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_4xi64, !torch_vtensor_3xi64, !torch_vtensor_2xi64) -> !torch_vtensor_4xi64, sym_name = "complex_convolution"}> ({
  ^bb0(%arg0: !torch_vtensor_4xi64, %arg1: !torch_vtensor_3xi64, %arg2: !torch_vtensor_2xi64):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %6 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %7 = "torch.constant.none"() : () -> !torch_none
    %8 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %9 = "torch.prim.ListConstruct"(%3, %4, %5) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %10 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %11 = "torch.prim.ListConstruct"(%3, %4, %5) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %12 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %13 = "torch.prim.ListConstruct"(%3, %4, %5) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %14 = "torch.aten.convolution"(%arg0, %arg1, %arg2, %8, %9, %10, %6, %7, %4) : (!torch_vtensor_4xi64, !torch_vtensor_3xi64, !torch_vtensor_2xi64, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool, !torch_none, !torch_int) -> !torch_vtensor_4xi64
    "func.return"(%14) : (!torch_vtensor_4xi64) -> ()
  }) : () -> ()
}) : () -> ()