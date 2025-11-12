"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_vtensor
      %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_vtensor
      %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_vtensor
      %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_vtensor
      %size0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %size1 = "torch.aten.size.int"(%arg0, %c1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %size2 = "torch.aten.size.int"(%arg0, %c2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %size3 = "torch.aten.size.int"(%arg0, %c3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %cat0 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %cat1 = "torch.aten.cat"(%cat0, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %cat2 = "torch.aten.cat"(%cat1, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %cat3 = "torch.aten.cat"(%cat2, %cat0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add0 = "torch.aten.add.Tensor"(%cat3, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add1 = "torch.aten.add.Tensor"(%add0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add2 = "torch.aten.add.Tensor"(%add1, %cat3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add3 = "torch.aten.add.Tensor"(%add2, %add0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %eq0 = "torch.aten.eq.Tensor"(%add3, %arg0) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %eq1 = "torch.aten.eq.Tensor"(%eq0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %eq2 = "torch.aten.eq.Tensor"(%eq1, %cat3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %eq3 = "torch.aten.eq.Tensor"(%eq2, %add3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%eq3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()