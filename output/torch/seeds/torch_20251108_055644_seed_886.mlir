"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_combine"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.aten.size.int"(%arg1, %2) : (!torch_vtensor, !torch_int) -> !torch_int
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %5 = "torch.aten.slice.Tensor"(%arg0, %4, %0, %1, %4) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.slice.Tensor"(%arg1, %4, %2, %3, %4) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %7 = "torch.aten.cat"(%5, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()