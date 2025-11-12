"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "f"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_float
    %3 = "torch.aten.index_select"(%arg0, %1, %arg0) : (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%arg1, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.mul.Tensor"(%arg0, %2) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %6 = "torch.aten.cat"(%5, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()