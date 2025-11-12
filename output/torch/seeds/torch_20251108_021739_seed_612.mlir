"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_list, !torch_list) -> (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor), sym_name = "mixed_ops$basic"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor, %arg3: !torch_vtensor, %arg4: !torch_list, %arg5: !torch_list, %arg6: !torch_list, %arg7: !torch_list, %arg8: !torch_list):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> i64
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (i64) -> !torch_vtensor
      %2 = "torch.aten.cat"(%arg1, %arg2, %arg3) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%arg4) : (!torch_list) -> !torch_vtensor
      %4 = "torch.aten._make_per_tensor_quantized_tensor"(%2, %arg5, %arg6, %arg7, %arg8) : (!torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_list) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%arg0, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.eq.Tensor"(%arg1, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5, %6, %3, %1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()


"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_list, !torch_list) -> (!torch_vtensor, !torch_vtensor), sym_name = "mixed_ops$advanced"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_list, %arg3: !torch_list, %arg4: !torch_list, %arg5: !torch_list, %arg6: !torch_list):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> i64
      %1 = "torch.prim.NumToTensor.Scalar"(%0) : (i64) -> !torch_vtensor
      %2 = "torch.aten.cat"(%arg1, %arg1, %arg1) : (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %3 = "torch.aten._shape_as_tensor"(%arg2) : (!torch_list) -> !torch_vtensor
      %4 = "torch.aten._make_per_tensor_quantized_tensor"(%2, %arg3, %arg4, %arg5, %arg6) : (!torch_vtensor, !torch_list, !torch_list, !torch_list, !torch_list) -> !torch_vtensor
      %5 = "torch.aten.add.Tensor"(%arg0, %4) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %6 = "torch.aten.eq.Tensor"(%arg1, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%5, %6) : (!torch_vtensor, !torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()