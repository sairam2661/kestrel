"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "complex_fuzz"}> ({
    ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_0) -> i64
      %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> i64
      %2 = "torch.aten.eq.Tensor"(%0, %1) : (i64, i64) -> i1
      %3 = "torch.prim.NumToTensor.Scalar"(%2) : (i1) -> !torch_vtensor_1
      %4 = "torch.aten.add.Tensor"(%arg0, %3) : (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2
      "func.return"(%4) : (!torch_vtensor_2) -> ()
  }) : () -> ()
}) : () -> ()