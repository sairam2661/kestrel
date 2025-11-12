"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz_func$1"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %c1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %c2 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
      %c3 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
      %0 = "torch.aten.size.int"(%arg0, %c2) : (!torch_vtensor, !torch_int) -> !torch_int
      %1 = "torch.aten.size.int"(%arg1, %c3) : (!torch_vtensor, !torch_int) -> !torch_int
      %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_int, !torch_int) -> !torch_bool
      %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.cat"(%arg0, %arg1, %c2) : (!torch_vtensor, !torch_vtensor, !torch_int) -> !torch_vtensor
      %5 = "torch.aten._shape_as_tensor"(%4) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()