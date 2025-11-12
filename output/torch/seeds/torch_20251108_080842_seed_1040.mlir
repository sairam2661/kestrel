"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_index_slice"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%1, %2, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%3, %arg2, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()