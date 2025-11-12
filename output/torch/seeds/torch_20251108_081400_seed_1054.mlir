"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_downcast, !torch_vtensor_downcast) -> !torch_vtensor_downcast, sym_name = "torch.aten.cat.mixed_types"}> ({
  ^bb0(%arg0: !torch_vtensor_downcast, %arg1: !torch_vtensor_downcast):
    %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_downcast, !torch_vtensor_downcast) -> !torch_vtensor_downcast
    "func.return"(%0) : (!torch_vtensor_downcast) -> ()
  }) : () -> ()
}) : () -> ()