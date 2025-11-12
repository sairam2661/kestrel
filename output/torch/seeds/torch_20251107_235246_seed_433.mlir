"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_float) -> (!torch_vtensor, !torch_bool), sym_name = "mixed_op_function"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_float):
      %0 = "torch.constant.float"() <{value = 0.0 : f64}> : () -> !torch_float
      %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %2 = "torch.prim.ListConstruct"(%arg0, %arg1, %0, %1) : (!torch_vtensor, !torch_float, !torch_float, !torch_bool) -> !torch_list
      %3 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%arg0, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %5 = "torch.prim.NumToTensor.Scalar"(%arg1) : (!torch_float) -> !torch_vtensor
      "func.return"(%2, %4) : (!torch_list, !torch_bool) -> ()
  }) : () -> ()
}) : () -> ()