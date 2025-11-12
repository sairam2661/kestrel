"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_op_sequence"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %3 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
      %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %5 = "torch.constant.none"() : () -> !torch_none
      %6 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %8 = "torch.prim.ListConstruct"(%6, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_list
      %9 = "torch.aten.cat"(%8, %0) : (!torch_list, !torch_int) -> !torch_vtensor
      %10 = "torch.prim.ListConstruct"(%2, %2, %2) : (!torch_int, !torch_int, !torch_int) -> !torch_list
      %11 = "torch.aten.view"(%9, %10) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %12 = "torch.aten.transpose.int"(%11, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %13 = "torch.prim.ListConstruct"(%3) : (!torch_int) -> !torch_list
      %14 = "torch.aten.view"(%12, %13) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %15 = "torch.aten.index_select"(%14, %0, %0) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
      %16 = "torch.aten.item"(%15) : (!torch_vtensor) -> !torch_int
      %17 = "torch.prim.ListConstruct"(%16) : (!torch_int) -> !torch_list
      %18 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %19 = "torch.aten.select.int"(%18, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%19) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()