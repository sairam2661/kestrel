"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "custom_op_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
      %0 = "torch.constant.str"() <{value = "hello_world"}> : () -> !torch_vtensor
      %1 = "torch.constant.float"() <{value = 3.14159 : f64}> : () -> !torch_vtensor
      %2 = "torch.constant.int"() <{value = 42 : i32}> : () -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.size.int"(%arg2, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.view"(%arg0, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.eq.Tensor"(%5, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()