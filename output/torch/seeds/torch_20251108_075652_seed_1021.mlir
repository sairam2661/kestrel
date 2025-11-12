"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorTensorType, !torch_vtensorTensorType) -> !torch_vtensorTensorType, sym_name = "torch.aten.cat$dim0$dynamic"}> ({
  ^bb0(%arg0: !torch_vtensorTensorType, %arg1: !torch_vtensorTensorType):
    %0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensorTensorType, !torch_vtensorTensorType) -> !torch_vtensorTensorType
    "func.return"(%0) : (!torch_vtensorTensorType) -> ()
  }) : () -> ()
}) : () -> ()