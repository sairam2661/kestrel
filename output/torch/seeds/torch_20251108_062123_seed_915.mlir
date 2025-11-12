"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_ty, !torch_vtensor_ty) -> !torch_vtensor_ty, sym_name = "fuzzing_function"}> ({
    ^bb0(%arg0: !torch_vtensor_ty, %arg1: !torch_vtensor_ty):
      %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
      %1 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor_ty, !torch_int, !torch_vtensor_ty) -> !torch_vtensor_ty
      %2 = "torch.aten.slice.Tensor"(%1, %0, %0, %0) : (!torch_vtensor_ty, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_ty
      %3 = "torch.constant.float"() <{value = 1.5 : f64}> : () -> !torch_float
      %4 = "torch.aten.add.Tensor"(%2, %3) : (!torch_vtensor_ty, !torch_float) -> !torch_vtensor_ty
      "func.return"(%4) : (!torch_vtensor_ty) -> ()
  }) : () -> ()
}) : () -> ()