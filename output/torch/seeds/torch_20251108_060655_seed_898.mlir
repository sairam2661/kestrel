"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_list) -> !torch_vtensor, sym_name = "torch_aten_cat_view"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_list):
      %0 = "torch.aten.cat"(%arg0, %arg1, %arg2) : (!torch_vtensor, !torch_vtensor, !torch_list) -> !torch_vtensor
      %1 = "torch.aten.view"(%0, %arg2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()