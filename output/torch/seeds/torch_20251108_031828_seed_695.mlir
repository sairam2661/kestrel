"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_float, !torch_int) -> !torch_vtensor, sym_name = "custom_tensor_operation"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_float, %arg2: !torch_int):
    %0 = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %2 = "torch.aten.mul"(%1, %arg2) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %3 = "torch.aten.sin"(%2) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()