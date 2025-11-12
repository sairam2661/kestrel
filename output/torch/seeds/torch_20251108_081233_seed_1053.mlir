"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i64_unranked, !torch_vtensor_i64_unranked) -> !torch_vtensor_i64_unranked, sym_name = "torch.aten.add.Tensor"}> ({
    ^bb0(%arg0: !torch_vtensor_i64_unranked, %arg1: !torch_vtensor_i64_unranked):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_i64_unranked, !torch_vtensor_i64_unranked) -> !torch_vtensor_i64_unranked
      "func.return"(%0) : (!torch_vtensor_i64_unranked) -> ()
  }) : () -> ()
}) : () -> ()