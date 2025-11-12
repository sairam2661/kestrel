"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "combine_tensors"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
    %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %2, %2, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.slice.Tensor"(%arg1, %2, %2, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.cat"(%4, %3, %2) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()