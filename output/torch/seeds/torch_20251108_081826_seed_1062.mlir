"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_custom_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %c4 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %c5 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      
      %list0 = "torch.prim.ListConstruct"(%c0, %c1, %c2) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      %list1 = "torch.prim.ListConstruct"(%c3, %c4, %c5) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
      
      %perm0 = "torch.aten.permute"(%arg0, %list0) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      %perm1 = "torch.aten.permute"(%arg1, %list1) : (!torch_vtensor, !torch_list_int) -> !torch_vtensor
      
      %add0 = "torch.aten.add"(%perm0, %perm1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      
      %cont0 = "torch.aten.contiguous"(%add0, %c0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      
      "func.return"(%cont0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()