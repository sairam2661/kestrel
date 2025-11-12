"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_0) -> !torch_vtensor_0, sym_name = "tensor_combinations"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_0):
    %0 = "torch.vtensor.literal"() <{value = dense<1.0> : tensor<2x2xf32>}> : () -> !torch_vtensor_0
    %1 = "torch.vtensor.literal"() <{value = dense<2.0> : tensor<2x2xf32>}> : () -> !torch_vtensor_0
    %2 = "torch.aten.add.Tensor"(%arg0, %1) : (!torch_vtensor_0, !torch_vtensor_0) -> !torch_vtensor_0
    %3 = "torch.aten.mul.Tensor"(%2, %0) : (!torch_vtensor_0, !torch_vtensor_0) -> !torch_vtensor_0
    %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor_1
    %5 = "torch.prim.ListConstruct"(%4, %4, %4) : (!torch_vtensor_1, !torch_vtensor_1, !torch_vtensor_1) -> !torch_vtensor_2
    %6 = "torch.aten.view"(%3, %5) : (!torch_vtensor_0, !torch_vtensor_2) -> !torch_vtensor_0
    "func.return"(%6) : (!torch_vtensor_0) -> ()
  }) {torch.assume_strict_symbolic_shapes, torch.disable_legacy_view} : () -> ()
}) : () -> ()