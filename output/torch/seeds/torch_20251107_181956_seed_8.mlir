"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "tensor_manipulation_complex"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg0, %1, %2, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.cat"(%3, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_float) -> !torch_vtensor
    %7 = "torch.aten.view"(%6, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%7) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()