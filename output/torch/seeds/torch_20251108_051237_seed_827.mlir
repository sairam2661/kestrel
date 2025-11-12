"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %dim0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %dim1 = "torch.aten.size.int"(%arg1, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %list = "torch.prim.ListConstruct"(%dim0, %dim1) : (!torch_int, !torch_int) -> !torch_list
      %shape = "torch.vtensor.literal"() <{value = dense<[[10, 20]]> : tensor<1x2xi64>}> : () -> !torch_vtensor
      %eq = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %cat = "torch.aten.cat"(%list, %c0) : (!torch_list, !torch_int) -> !torch_vtensor
      "func.return"(%cat) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "fuzz_func2"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %dim0 = "torch.aten.size.int"(%arg0, %c0) : (!torch_vtensor, !torch_int) -> !torch_int
      %dim1 = "torch.aten.size.int"(%arg1, %c1) : (!torch_vtensor, !torch_int) -> !torch_int
      %list = "torch.prim.ListConstruct"(%dim0, %dim1) : (!torch_int, !torch_int) -> !torch_list
      %shape = "torch.vtensor.literal"() <{value = dense<[[10, 20]]> : tensor<1x2xi64>}> : () -> !torch_vtensor
      %eq = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %add = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %cat = "torch.aten.cat"(%list, %c0) : (!torch_list, !torch_int) -> !torch_vtensor
      "func.return"(%cat) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()