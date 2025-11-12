"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "torch.aten.cat_and_add"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
    %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2
    %1 = "torch.aten.add.Tensor"(%0, %arg0) : (!torch_vtensor_2, !torch_vtensor_0) -> !torch_vtensor_2
    "func.return"(%1) : (!torch_vtensor_2) -> ()
  }) : () -> ()
}) : () -> ()