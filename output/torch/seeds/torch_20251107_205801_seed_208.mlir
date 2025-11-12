"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzzing"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.float"() <{value = 2.500000e+00 : f64}> : () -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_vtensor
      %2 = "torch.constant.bool"() <{value = true}> : () -> !torch_vtensor
      %3 = "torch.constant.none"() : () -> !torch_vtensor
      %4 = "torch.constant.str"() <{value = "test"}> : () -> !torch_vtensor
      %5 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.view"(%arg0, %1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %7 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.slice.Tensor"(%arg0, %1, %1, %1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %9 = "torch.aten.cat"(%6, %8) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %10 = "torch.aten.add.Tensor"(%arg1, %9) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%10) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()