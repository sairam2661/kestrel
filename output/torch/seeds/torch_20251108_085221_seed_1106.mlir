"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor, !torch_int), sym_name = "fuzzing_complex"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor) -> !torch_int
      %2 = "torch.aten._shape_as_tensor"(%0) : (!torch_int) -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%1) : (!torch_int) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%2, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.prim.NumToTensor.Scalar"() <{value = 1.0 : f32}> : () -> !torch_vtensor
      %7 = "torch.aten.cat"(%5, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5, %7, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> ()
  }) : () -> ()
}) : () -> ()