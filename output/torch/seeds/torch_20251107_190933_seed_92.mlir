"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_custom_op_example"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 42 : i64}> : () -> !torch_int
      %1 = "torch.constant.str"() <{value = "hello"}> : () -> !torch_str
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.vtensor.literal"() <{value = dense<1.0> : tensor<2x3xf32>}> : () -> !torch_vtensor
      %4 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %5 = "torch.aten.view"(%4, %0) : (!torch_vtensor, !torch_int) -> !torch_vtensor
      "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()