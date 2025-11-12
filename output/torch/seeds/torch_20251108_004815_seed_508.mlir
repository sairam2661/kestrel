"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type, sym_name = "torch.aten.index_select$complex"}> ({
    ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_int, %arg2: !torch_int, %arg3: !torch_int, %arg4: !torch_int, %arg5: !torch_int, %arg6: !torch_int, %arg7: !torch_int):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_type) -> !torch_int
      %1 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_type) -> !torch_vtensor_type
      %2 = "torch.aten.index_select"(%arg0, %arg1, %arg2) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
      %3 = "torch.aten.slice.Tensor"(%2, %arg3, %arg4, %arg5) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
      %4 = "torch.aten.view"(%3, %arg6, %arg7) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
      "func.return"(%4) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()