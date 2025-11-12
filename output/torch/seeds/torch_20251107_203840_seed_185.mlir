"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.matmul_clamp"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.constant.float"() <{value = 0.0 : f32}> : () -> !torch_float
    %2 = "torch.constant.float"() <{value = 10.0 : f32}> : () -> !torch_float
    %3 = "torch.aten.clamp"(%0, %1, %2) : (!torch_vtensor, !torch_float, !torch_float) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()