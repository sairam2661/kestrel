"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "mixed_type_operations"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor) -> i64
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> i64
    %2 = "torch.aten._shape_as_tensor"(%0) : (i64) -> !torch_vtensor
    %3 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %4 = "torch.aten.eq.Tensor"(%arg0, %3) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %5 = "torch.aten._make_per_tensor_quantized_tensor"(%3, %1, %1, %1) : (!torch_vtensor, i64, i64, i64) -> !torch_vtensor
    "func.return"(%5) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()