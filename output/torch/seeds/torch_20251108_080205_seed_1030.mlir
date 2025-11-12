"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> (!torch_vtensor, !torch_vtensor), sym_name = "complex_fuzz_function"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %2 = "torch.constant.float"() <{value = 0.5 : f32}> : () -> !torch_float
      %3 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.mul"(%3, %2) : (!torch_vtensor, !torch_float) -> !torch_vtensor
      %5 = "torch.aten.relu"(%4) : (!torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.slice_tensor"(%5, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
      "func.return"(%6, %arg0) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()