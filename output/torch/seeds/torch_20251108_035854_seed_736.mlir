"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %1 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
      %3 = "torch.aten.mul.Tensor"(%0, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.constant.float"() <{value = 2.5 : f32}> : () -> !torch_float
      %5 = "torch.prim.NumToTensor.Scalar"(%4) : (!torch_float) -> !torch_vtensor
      %6 = "torch.aten.add"(%3, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()