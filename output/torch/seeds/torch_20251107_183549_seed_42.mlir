"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64, sym_name = "unusual_combine"}> ({
    ^bb0(%arg0: !torch_vtensor_i64, %arg1: !torch_vtensor_i64):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64
      %1 = "torch.aten.mul.Tensor"(%0, %0) : (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64
      %2 = "torch.aten.sub.Tensor"(%1, %arg1) : (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64
      %3 = "torch.aten.div.Tensor"(%2, %arg0) : (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64
      "func.return"(%3) : (!torch_vtensor_i64) -> ()
  }) : () -> ()
}) : () -> ()