"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_complex_op"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.view"(%2, %1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.slice.Tensor"(%3, %1, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()