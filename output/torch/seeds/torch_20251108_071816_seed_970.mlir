"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.prim.NumToTensor.Scalar"() <{value = 2 : i32}> : () -> !torch_vtensor
      %1 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %2 = "torch.prim.NumToTensor.Scalar"() <{value = 1 : i32}> : () -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%1, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%arg0, %0, %2) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()