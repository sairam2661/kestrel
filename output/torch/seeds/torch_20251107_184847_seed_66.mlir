"builtin.module"() ({
  "func.func"()  <{function_type = (!torch_vtensor, !torch_int, !torch_int) -> (!torch_vtensor, !torch_int), sym_name = "torch.aten.add_and_shape_as_tensor"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_int, %arg2: !torch_int):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0) : (!torch_vtensor) -> !torch_int
      %2 = "torch.aten._shape_as_tensor"(%1) : (!torch_int) -> !torch_vtensor
      "func.return"(%0, %2) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()