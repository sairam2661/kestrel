"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensori32, !torch_vtensori32) -> !torch_vtensori32, sym_name = "torch.aten.add.Tensor"}> ({
    ^bb0(%arg0: !torch_vtensori32, %arg1: !torch_vtensori32):
      %c0_i32 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1_i32 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2_i32 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %c3_i32 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      
      %list0 = "torch.prim.ListConstruct"(%c0_i32, %c1_i32) : (!torch_int, !torch_int) -> !torch_listint
      %list1 = "torch.prim.ListConstruct"(%c2_i32, %c3_i32) : (!torch_int, !torch_int) -> !torch_listint
      
      %shape0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensori32) -> !torch_vtensori32
      %shape1 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensori32) -> !torch_vtensori32
      
      %cat0 = "torch.aten.cat"(%list0) : (!torch_listint) -> !torch_vtensori32
      %cat1 = "torch.aten.cat"(%list1) : (!torch_listint) -> !torch_vtensori32
      
      %index0 = "torch.aten.index_select"(%arg0, %c0_i32, %cat0) : (!torch_vtensori32, !torch_int, !torch_vtensori32) -> !torch_vtensori32
      %index1 = "torch.aten.index_select"(%arg1, %c0_i32, %cat1) : (!torch_vtensori32, !torch_int, !torch_vtensori32) -> !torch_vtensori32
      
      %add0 = "torch.aten.add.Tensor"(%index0, %index1) : (!torch_vtensori32, !torch_vtensori32) -> !torch_vtensori32
      
      "func.return"(%add0) : (!torch_vtensori32) -> ()
  }) : () -> ()
}) : () -> ()