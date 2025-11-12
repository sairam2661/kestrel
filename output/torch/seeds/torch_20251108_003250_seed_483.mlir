"builtin.module"() ({
  "func.func"() <{function_type = (!torch$vtensor, !torch$vtensor) -> !torch$vtensor, sym_name = "quantized_tensor_operations"}> ({
  ^bb0(%arg0: !torch$vtensor, %arg1: !torch$vtensor):
    %0 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch$int
    %1 = "torch.constant.int"() <{value = 127 : i64}> : () -> !torch$int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch$int
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1, %2) : (!torch$vtensor, !torch$int, !torch$int, !torch$int) -> !torch$vtensor
    %4 = "torch.aten.size.int"(%3) : (!torch$vtensor) -> !torch$vtensor
    %5 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch$int) -> !torch$vtensor
    %6 = "torch.aten.add.Tensor"(%5, %4) : (!torch$vtensor, !torch$vtensor) -> !torch$vtensor
    %7 = "torch.aten.cat"(%6) : (!torch$vtensor) -> !torch$vtensor
    %8 = "torch.aten._shape_as_tensor"(%7) : (!torch$vtensor) -> !torch$vtensor
    %9 = "torch.aten.eq.Tensor"(%8, %5) : (!torch$vtensor, !torch$vtensor) -> !torch$vtensor
    "func.return"(%9) : (!torch$vtensor) -> ()
  }) : () -> ()
}) : () -> ()