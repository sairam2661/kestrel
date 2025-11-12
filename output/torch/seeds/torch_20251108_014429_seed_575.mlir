"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %4 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch_float
    %5 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.view"(%5, %1, %2) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %7 = "torch.aten.slice.Tensor"(%6, %3, %3, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %8 = "torch.aten.eq.Tensor"(%arg0, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()