"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_like, !torch_vtensor_like) -> !torch_vtensor_like, sym_name = "tensor_operations"}> ({
    ^bb0(%arg0: !torch_vtensor_like, %arg1: !torch_vtensor_like):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_like, !torch_vtensor_like) -> !torch_vtensor_like
      %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %2 = "torch.aten.slice.Tensor"(%arg0, %1, %1, %1) : (!torch_vtensor_like, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_like
      %3 = "torch.aten.view"(%2, %1) : (!torch_vtensor_like, !torch_int) -> !torch_vtensor_like
      %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %5 = "torch.prim.ListConstruct"(%4) : (!torch_bool) -> !torch_list_bool
      %6 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
      %7 = "torch.aten.eq.Tensor"(%3, %6) : (!torch_vtensor_like, !torch_float) -> !torch_vtensor_like
      %8 = "torch.aten.size.int"(%7) : (!torch_vtensor_like) -> !torch_int
      %9 = "torch.prim.NumToTensor.Scalar"(%8) : (!torch_int) -> !torch_vtensor_like
      "func.return"(%9) : (!torch_vtensor_like) -> ()
  }) : () -> ()
}) : () -> ()