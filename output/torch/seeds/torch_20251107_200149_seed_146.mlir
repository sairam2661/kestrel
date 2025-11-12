"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_matmul_and_list"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %4 = "torch.constant.none"() : () -> !torch_none
    %5 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.size.int"(%arg0, %2) : (!torch_vtensor, !torch_int) -> !torch_int
    %7 = "torch.aten.size.int"(%arg0, %3) : (!torch_vtensor, !torch_int) -> !torch_int
    %8 = "torch.aten.size.int"(%arg1, %3) : (!torch_vtensor, !torch_int) -> !torch_int
    %9 = "torch.prim.ListConstruct"(%6, %7, %8) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %10 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %11 = "torch.aten.transpose.int"(%10, %1, %3) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %12 = "torch.aten.reshape"(%11, %9) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
    "func.return"(%12) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()