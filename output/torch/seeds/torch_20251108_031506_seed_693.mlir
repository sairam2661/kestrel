"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_int, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_tensor_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int, %arg2: !torch_vtensor):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
      %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_int) -> !torch_vtensor
      %2 = "torch.aten.add.Tensor"(%arg0, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten.eq.Tensor"(%arg1, %0) : (!torch_int, !torch_int) -> !torch_bool
      %4 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_int) -> !torch_vtensor
      %5 = "torch.aten.cat"(%2, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
    }) : () -> ()
  }) : () -> ()