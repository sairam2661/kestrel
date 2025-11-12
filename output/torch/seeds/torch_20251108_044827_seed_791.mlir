"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.mul"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.div.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.pow"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      %7 = "torch.aten.sqrt"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.sin"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %9 = "torch.aten.cos"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %10 = "torch.aten.atan2"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %11 = "torch.aten.clamp"(%arg0, %0, %0) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      %12 = "torch.aten.relu"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %13 = "torch.aten.sigmoid"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%13) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()