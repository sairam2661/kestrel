"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_splat_dense_fp, !torch_vtensor_splat_dense_fp) -> !torch_vtensor_splat_dense_fp, sym_name = "torch_aten_add_tensor_splat_dense_fp"}> ({
    ^bb0(%arg0: !torch_vtensor_splat_dense_fp, %arg1: !torch_vtensor_splat_dense_fp):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_splat_dense_fp, !torch_vtensor_splat_dense_fp) -> !torch_vtensor_splat_dense_fp
      %1 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_splat_dense_fp, !torch_vtensor_splat_dense_fp) -> !torch_vtensor_splat_dense_fp
      %2 = "torch.aten.view"(%0, %1) : (!torch_vtensor_splat_dense_fp, !torch_vtensor_splat_dense_fp) -> !torch_vtensor_splat_dense_fp
      "func.return"(%2) : (!torch_vtensor_splat_dense_fp) -> ()
  }) : () -> ()
}) : () -> ()