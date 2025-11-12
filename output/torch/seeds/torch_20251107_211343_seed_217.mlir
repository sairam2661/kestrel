"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_torch_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : !torch_int -> !torch_int_tensor
      %4 = "torch.aten.equal.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %5 = "torch.aten.add.Tensor"(%arg0, %arg1, %0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()