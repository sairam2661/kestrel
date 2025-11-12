"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor16x16xf32, !torch_vtensor16x16xf32) -> !torch_vtensor16x16xf32, sym_name = "fft2d"}> ({
  ^bb0(%arg0: !torch_vtensor16x16xf32, %arg1: !torch_vtensor16x16xf32):
    %1 = "torch.vtensor.literal"() <{value = dense<0> : tensor<16x16xf32>}> : () -> !torch_vtensor16x16xf32
    %2 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor16x16xf32, !torch_vtensor16x16xf32) -> !torch_vtensor16x16xf32
    %3 = "tosa.fft2d"(%2) : (!torch_vtensor16x16xf32) -> !torch_vtensor16x16xf32
    "func.return"(%3) : (!torch_vtensor16x16xf32) -> ()
  }) : () -> ()
}) : () -> ()