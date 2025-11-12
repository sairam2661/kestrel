"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_index_select_dynamic"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.aten.size.int"(%arg0, %1) : (!torch_vtensor, !torch_int) -> !torch_int
    %3 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %4 = "torch.aten.index_select"(%arg1, %1, %2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %6 = "torch.aten.eq.Tensor"(%0, %4, %5) : (!torch_vtensor, !torch_vtensor, !torch_bool) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()