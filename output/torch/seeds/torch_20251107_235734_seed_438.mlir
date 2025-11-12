"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fusion_test"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor, %arg3: !torch_vtensor, %arg4: !torch_vtensor, %arg5: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 0.500000e+00 : f64}> : () -> !torch_float
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %3 = "torch.aten.mul.Tensor"(%2, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %4 = "torch.aten.add.Tensor"(%3, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten.mul.Tensor"(%4, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%5, %arg3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.mul.Tensor"(%6, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %8 = "torch.aten.add.Tensor"(%7, %arg4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %9 = "torch.aten.mul.Tensor"(%8, %1) : (!torch_vtensor, !torch_float) -> !torch_vtensor
    %10 = "torch.aten.add.Tensor"(%9, %arg5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%10) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()