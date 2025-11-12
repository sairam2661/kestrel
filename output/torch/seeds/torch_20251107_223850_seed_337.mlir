"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "mixed_dtype_operations"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %1 = "torch.aten.size.int"(%0, %c0) : (!torch_vtensor, !torch_constant) -> !torch_constant
      %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_constant) -> !torch_vtensor
      %3 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant
      %4 = "torch.vtensor.literal"() <{value = dense<1> : tensor<si32>}> : () -> !torch_vtensor
      %5 = "torch.prim.ListConstruct"(%3, %4) : (!torch_constant, !torch_vtensor) -> !torch_list
      %6 = "torch.aten.broadcast_to"(%2, %5) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %7 = "torch.aten.add.Tensor"(%arg1, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %c1, %c2, %c3) : (!torch_vtensor, !torch_constant, !torch_constant, !torch_constant) -> !torch_vtensor
      %9 = "torch.aten.cat"(%7, %8) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%9) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()