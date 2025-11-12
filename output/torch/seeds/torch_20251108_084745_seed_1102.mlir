"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_max_pool_and_sum"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %5 = "torch.prim.ListConstruct"(%3, %4) : (!torch_int, !torch_int) -> !torch_list
    %6 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %7 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %8 = "torch.prim.ListConstruct"(%6, %7) : (!torch_int, !torch_int) -> !torch_list
    %9 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %10 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %11 = "torch.prim.ListConstruct"(%9, %10) : (!torch_int, !torch_int) -> !torch_list
    %12 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %13 = "torch.aten.max_pool2d"(%arg0, %2, %5, %8, %11, %12) : (!torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_list, !torch_bool) -> !torch_vtensor
    %14 = "torch.aten.add.Tensor"(%arg1, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %15 = "torch.aten.add.Tensor"(%13, %14) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%15) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()