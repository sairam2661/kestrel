"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "complex_shape_slicing"}> ({
  ^bb0(%arg0: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %6 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %7 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_int
    %8 = "torch.aten.index_select"(%arg0, %2, %3) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %9 = "torch.aten.index_select"(%arg0, %2, %4) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %10 = "torch.aten.cat"(%8, %9, %5) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    %11 = "torch.aten.slice.Tensor"(%10, %2, %3, %6, %7) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %12 = "torch.aten.view"(%11, %6, %7, %5) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%12) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()