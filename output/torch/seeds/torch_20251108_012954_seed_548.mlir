"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.aten.size.int"(%arg0, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
    %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.eq.Tensor"(%3, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
    %6 = "torch.aten.cat"(%5, %2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.mul.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %8 = "torch.aten.add.Tensor"(%7, %6) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()