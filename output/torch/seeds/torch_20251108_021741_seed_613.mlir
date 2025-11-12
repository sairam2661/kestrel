"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64, sym_name = "torch_mixed_types"}> ({
    ^bb0(%arg0: !torch_vtensor_i64, %arg1: !torch_vtensor_i64):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_i64) -> !torch_vtensor_i64
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_i64) -> !torch_vtensor_i64
      %2 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64
      %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_vtensor_i64) -> !torch_vtensor_i64
      %4 = "torch.aten.add.Tensor"(%3, %0) : (!torch_vtensor_i64, !torch_vtensor_i64) -> !torch_vtensor_i64
      "func.return"(%4) : (!torch_vtensor_i64) -> ()
  }) : () -> ()
}) : () -> ()