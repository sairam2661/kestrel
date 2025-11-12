"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_aten_cat_fuzz"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor
    %cat_result = "torch.aten.cat"(%arg0, %arg1, %arg2, %c0) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %size = "torch.aten.size.int"(%cat_result) : (!torch_vtensor) -> !torch_vtensor
    %size_as_tensor = "torch.aten._shape_as_tensor"(%size) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%cat_result) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()