"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_bool) -> !torch_vtensor, sym_name = "fuzz_torch"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_bool):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %1 = "torch.constant.none"() : () -> !torch_none
      %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor
      %3 = "torch.aten.add.Tensor"(%arg0, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%arg0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.prim.ListConstruct"(%1, %1, %1, %1, %1) : (!torch_none, !torch_none, !torch_none, !torch_none, !torch_none) -> !torch_list
      %6 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()