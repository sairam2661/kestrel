"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorliteral_0, !torch_vtensorliteral_1) -> !torch_vtensorliteral_2, sym_name = "torch_add_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensorliteral_0, %arg1: !torch_vtensorliteral_1):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensorliteral_0) -> !torch_vtensorliteral_0
    %2 = "torch.aten.size.int"(%1, %0) : (!torch_vtensorliteral_0, !torch_int) -> !torch_int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %4 = "torch.aten.size.int"(%1, %3) : (!torch_vtensorliteral_0, !torch_int) -> !torch_int
    %5 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_int) -> !torch_vtensorliteral_0
    %6 = "torch.prim.NumToTensor.Scalar"(%4) : (!torch_int) -> !torch_vtensorliteral_0
    %7 = "torch.prim.ListConstruct"(%5, %6) : (!torch_vtensorliteral_0, !torch_vtensorliteral_0) -> !torch_list_int
    %8 = "torch.aten.view"(%arg0, %7) : (!torch_vtensorliteral_0, !torch_list_int) -> !torch_vtensorliteral_0
    %9 = "torch.aten.view"(%arg1, %7) : (!torch_vtensorliteral_1, !torch_list_int) -> !torch_vtensorliteral_1
    %10 = "torch.aten.add.Tensor"(%8, %9, %arg0) : (!torch_vtensorliteral_0, !torch_vtensorliteral_1, !torch_vtensorliteral_0) -> !torch_vtensorliteral_2
    "func.return"(%10) : (!torch_vtensorliteral_2) -> ()
  }) : () -> ()
}) : () -> ()