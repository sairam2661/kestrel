"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operation"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.mul"(%2, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.relu"(%3) : (!torch_vtensor) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()