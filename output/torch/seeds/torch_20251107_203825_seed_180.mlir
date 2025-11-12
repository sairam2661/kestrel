"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i8, !torch_vtensor_i8) -> !torch_vtensor_i8, sym_name = "torch.aten.add$byte"}> ({
  ^bb0(%arg0: !torch_vtensor_i8, %arg1: !torch_vtensor_i8):
    %0 = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_i8, !torch_vtensor_i8) -> !torch_vtensor_i8
    %2 = "torch.aten.clamp"(%1, "torch.constant.i8"  , "torch.constant.i8"  ) : (!torch_vtensor_i8, !torch_i8, !torch_i8) -> !torch_vtensor_i8
    "func.return"(%2) : (!torch_vtensor_i8) -> ()
  }) : () -> ()
}) : () -> ()