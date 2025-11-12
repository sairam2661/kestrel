"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal27, !torch_vtensor_literal27) -> !torch_vtensor_literal27, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor_literal27, %arg1: !torch_vtensor_literal27):
      %2 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_literal27, !torch_vtensor_literal27) -> !torch_vtensor_literal27
      %3 = "torch.constant.str"() <{value = "test_str"}> : () -> !torch_vtensor_literal27
      %4 = "torch.constant.float"() <{value = 3.14 : f32}> : () -> !torch_vtensor_literal27
      %5 = "torch.prim.NumToTensor.Scalar"(%4) : (!torch_vtensor_literal27) -> !torch_vtensor_literal27
      %6 = "torch.aten.add.Tensor"(%2, %5) : (!torch_vtensor_literal27, !torch_vtensor_literal27) -> !torch_vtensor_literal27
      "func.return"(%6) : (!torch_vtensor_literal27) -> ()
  }) : () -> ()
}) : () -> ()