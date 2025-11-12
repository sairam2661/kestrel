"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0168679827, !torch_vtensor_0365827084, !torch_vtensor_0307223071) -> !torch_vtensor_0168679827, sym_name = "complex_interactions"}> ({
    ^bb0(%arg0: !torch_vtensor_0168679827, %arg1: !torch_vtensor_0365827084, %arg2: !torch_vtensor_0307223071):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %2 = "torch.aten.view"(%arg0, %0) : (!torch_vtensor_0168679827, !torch_int) -> !torch_vtensor_0365827084
      %3 = "torch.aten.add.Tensor"(%arg1, %2, %1) : (!torch_vtensor_0365827084, !torch_vtensor_0365827084, !torch_bool) -> !torch_vtensor_0365827084
      %4 = "torch.aten.index_select"(%arg2, %3, %0) : (!torch_vtensor_0307223071, !torch_vtensor_0365827084, !torch_int) -> !torch_vtensor_0307223071
      "func.return"(%4) : (!torch_vtensor_0307223071) -> ()
  }) : () -> ()
}) : () -> ()