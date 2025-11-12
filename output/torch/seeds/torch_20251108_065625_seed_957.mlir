"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz_function"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_int
      %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor
      %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %5 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %6 = "torch.aten.eq.Tensor"(%4, %5) : (!torch_bool, !torch_bool) -> !torch_bool
      %7 = "torch.vtensor.literal"() <{value = dense<1.000000e+00> : tensor<f32>}> : () -> !torch_vtensor
      %8 = "torch.aten.add.Tensor"(%arg0, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %9 = "torch.aten.add.Tensor"(%arg1, %8) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %10 = "torch.aten.cat"(%arg0, %arg1, %9) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%10) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()