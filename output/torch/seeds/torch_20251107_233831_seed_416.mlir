"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.addcat"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor
    %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
    %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor
    %c3_f32 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_vtensor
    %cstr_none = "torch.constant.none"() : () -> !torch_vtensor
    %size0 = "torch.aten.size.int"(%arg0, %c0_i64) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %size1 = "torch.aten.size.int"(%arg0, %c1_i64) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %size2 = "torch.aten.size.int"(%arg1, %c1_i64) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %list0 = "torch.prim.ListConstruct"(%size0, %size1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %list1 = "torch.prim.ListConstruct"(%size2) : (!torch_vtensor) -> !torch_vtensor
    %view0 = "torch.aten.view"(%arg0, %list0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %view1 = "torch.aten.view"(%arg1, %list1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %add0 = "torch.aten.add.Tensor"(%view0, %c3_f32) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %add1 = "torch.aten.add.Tensor"(%view1, %c3_f32) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %cat0 = "torch.aten.cat"(%add0, %c2_i64) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %cat1 = "torch.aten.cat"(%cat0, %add1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%cat1) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()