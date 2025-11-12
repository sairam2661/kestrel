"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_interaction_complex"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0, %3) : (!torch_vtensor, !torch_int) -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.index_select"(%arg0, %1, %0) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %4 = "torch.aten.slice.Tensor"(%arg1, %3, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.add.Tensor"(%2, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()