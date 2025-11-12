"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor), sym_name = "tensor_concat_unusual"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.none"() : () -> !torch_none
    %2 = "torch.aten.cat"(%arg0, %arg1, %0, %1) : (!torch_vtensor, !torch_vtensor, !torch_int, !torch_none) -> !torch_vtensor
    "func.return"(%2) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()