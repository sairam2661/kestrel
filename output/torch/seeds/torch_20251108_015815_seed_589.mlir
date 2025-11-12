"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.cat$unusual_order$dim_zero"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
    %1 = "torch.aten.size.int"(%arg1, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.aten.add.Tensor"(%0, %1) : (!torch_int, !torch_int) -> !torch_int
    %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_int) -> !torch_vtensor
    %4 = "torch.aten.cat"(%arg0, %arg1, %c0) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
    "func.return"(%4) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()