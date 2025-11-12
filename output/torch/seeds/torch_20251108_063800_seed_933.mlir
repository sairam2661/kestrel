"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fusion_function"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %4 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %5 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_int
    %6 = "torch.prim.ListConstruct"(%4, %5, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list
    %7 = "torch.aten.view"(%arg0, %6) : (!torch_vtensor, !torch_list) -> !torch_vtensor
    %8 = "torch.aten.add.Tensor"(%arg1, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %9 = "torch.aten.eq.Tensor"(%8, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()