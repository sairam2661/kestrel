"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.matmul.dim"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.matmul"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.squeeze"(%0) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.matmul.transpose"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.transpose"(%arg0, 0, 1) : (!torch_vtensor, i64, i64) -> !torch_vtensor
    %1 = "torch.aten.matmul"(%0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%1) : (!torch_vtensor) -> ()
  }) : () -> ()
  "func.func"() <{function_type = () -> !torch_vtensor, sym_name = "torch.aten.rand"}> ({
  ^bb0():
    %0 = "torch.aten.rand"() : () -> !torch_vtensor
    "func.return"(%0) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()