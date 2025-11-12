"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_op_chain"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.mul"(%0, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.aten.view"(%1, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.constant.float"() <{value = 2.0 : f32}> : () -> !torch_vtensor
    %4 = "torch.aten.add"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()