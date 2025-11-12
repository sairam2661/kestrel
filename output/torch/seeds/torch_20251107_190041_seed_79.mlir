"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_slice_and_view"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %4 = "torch.aten.slice.Tensor"(%arg0, %0, %2, %3, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.view"(%4, "shape=[2, 5, 3]") : (!torch_vtensor, !torch_dim) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()