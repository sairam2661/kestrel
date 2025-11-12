"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_matmul_strided"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.prim.ListConstruct"(%0, %1, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %5 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %6 = "torch.prim.ListConstruct"(%4, %5) : (!torch_int, !torch_int) -> !torch_list_int
    %7 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %8 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %9 = "torch.prim.ListConstruct"(%7, %8) : (!torch_int, !torch_int) -> !torch_list_int
    %10 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %11 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %12 = "torch.constant.none"() : () -> !torch_none
    %13 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %14 = "torch.aten.transpose"(%13, %6, %9) : (!torch_vtensor, !torch_list_int, !torch_list_int) -> !torch_vtensor
    "func.return"(%14) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()