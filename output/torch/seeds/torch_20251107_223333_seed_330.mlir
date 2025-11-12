"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor128x64, !torch_vtensor128x64) -> !torch_vtensor128x64, sym_name = "torch.matmul_unusual"}> ({
    ^bb0(%arg0: !torch_vtensor128x64, %arg1: !torch_vtensor128x64):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %list0 = "torch.prim.ListConstruct"(%c0, %c1) : (!torch_int, !torch_int) -> !torch_listint
      %list1 = "torch.prim.ListConstruct"(%c1, %c0) : (!torch_int, !torch_int) -> !torch_listint
      %perm0 = "torch.aten.permute"(%arg0, %list0) : (!torch_vtensor128x64, !torch_listint) -> !torch_vtensor128x64
      %perm1 = "torch.aten.permute"(%arg1, %list1) : (!torch_vtensor128x64, !torch_listint) -> !torch_vtensor128x64
      %matmul = "torch.aten.matmul"(%perm0, %perm1) : (!torch_vtensor128x64, !torch_vtensor128x64) -> !torch_vtensor128x64
      "func.return"(%matmul) : (!torch_vtensor128x64) -> ()
  }) : () -> ()
}) : () -> ()