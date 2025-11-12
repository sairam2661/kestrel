"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "unusual_combinations$test$0"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list
      %3 = "torch.aten.view"(%arg0, %2) : (!torch_vtensor, !torch_list) -> !torch_vtensor
      %4 = "torch.aten.eq.Tensor"(%arg1, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
      %5 = "torch.constant.none"() : () -> !torch_none
      %6 = "torch.aten._make_per_tensor_quantized_tensor"(%3, %4, %5, %5) : (!torch_vtensor, !torch_bool, !torch_none, !torch_none) -> !torch_vtensor
      "func.return"(%6) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()