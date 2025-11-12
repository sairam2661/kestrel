"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorLiteral, !torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral, sym_name = "complex_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensorLiteral, %arg1: !torch_vtensorLiteral, %arg2: !torch_vtensorLiteral):
      %c0_i32 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensorLiteral
      %c1_i32 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensorLiteral
      %c2_i32 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensorLiteral
      %list0 = "torch.prim.ListConstruct"(%c0_i32, %c1_i32) : (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      %list1 = "torch.prim.ListConstruct"(%c2_i32, %c0_i32) : (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      %size0 = "torch.aten.size.int"(%arg0, %c0_i32) : (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      %size1 = "torch.aten.size.int"(%arg0, %c1_i32) : (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      %slice0 = "torch.aten.slice.Tensor"(%arg0, %c0_i32, %c0_i32, %size0) : (!torch_vtensorLiteral, !torch_vtensorLiteral, !torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      %slice1 = "torch.aten.slice.Tensor"(%arg0, %c1_i32, %c0_i32, %size1) : (!torch_vtensorLiteral, !torch_vtensorLiteral, !torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      %cat0 = "torch.aten.cat"(%slice0, %slice1) : (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      %view0 = "torch.aten.view"(%cat0, %list0) : (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      %view1 = "torch.aten.view"(%view0, %list1) : (!torch_vtensorLiteral, !torch_vtensorLiteral) -> !torch_vtensorLiteral
      "func.return"(%view1) : (!torch_vtensorLiteral) -> ()
  }) : () -> ()
}) : () -> ()