"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_combine_and_index"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 2.5 : f32}> : () -> !torch_float
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %4 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.index_select"(%4, %1, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%5, %2) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()