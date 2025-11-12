"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch_custom_op"}> ({
    ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
      %0 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
      %1 = "torch.constant.float"() <{value = 3.14 : f64}> : () -> !torch_float
      %2 = "torch.constant.none"() : () -> !torch_none
      %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      %4 = "torch.aten.slice.Tensor"(%3, %0, %0, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
      %5 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> !torch_int
      %6 = "torch.prim.NumToTensor.Scalar"(%5) : (!torch_int) -> !torch_vtensor
      %7 = "torch.aten._shape_as_tensor"(%6) : (!torch_vtensor) -> !torch_vtensor
      %8 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
      "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()