"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensorarial, !torch_vtensorarial) -> !torch_vtensorarial, sym_name = "complex_fuzz_test"}> ({
    ^bb0(%arg0: !torch_vtensorarial, %arg1: !torch_vtensorarial):
      %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.vtensor.literal"() <{value = dense<[1.0, 2.0, 3.0]> : tensor<3xf32>}> : () -> !torch_vtensorarial
      %3 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensorarial, !torch_vtensorarial) -> !torch_vtensorarial
      %5 = "torch.aten.eq.Tensor"(%4, %2) : (!torch_vtensorarial, !torch_vtensorarial) -> !torch_vtensorarial
      "func.return"(%5) : (!torch_vtensorarial) -> ()
  }) : () -> ()
}) : () -> ()