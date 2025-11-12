"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten.add.Tensor$unusual"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor) -> !torch_vtensor
    %1 = "torch.aten.size.int"(%0, %c0_i64) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.aten.size.int"(%0, %c1_i64) : (!torch_vtensor, !torch_int) -> !torch_int
    %3 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %4 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_int) -> !torch_vtensor
    %5 = "torch.prim.NumToTensor.Scalar"(%2) : (!torch_int) -> !torch_vtensor
    %6 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten.add.Tensor"(%4, %5) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %8 = "torch.aten.cat"(%6, %7) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
  
  "func.func"() <{function_type = (!torch_vtensor) -> !torch_vtensor, sym_name = "torch.aten._make_per_tensor_quantized_tensor$basic"}> ({
  ^bb1(%arg0: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 20 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 30 : i64}> : () -> !torch_int
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1, %2) : (!torch_vtensor, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    "func.return"(%3) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()