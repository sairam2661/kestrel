"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_torch_ops"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_vtensor) -> !torch_vtensor
    %2 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %3 = "torch.aten.slice.Tensor"(%arg1, %2, %2, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %4 = "torch.prim.ListConstruct"(%arg0, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_list
    %5 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()