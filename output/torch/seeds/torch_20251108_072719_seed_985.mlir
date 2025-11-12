"builtin.module"() ({
  "func.func"() <{function_type = (!torch_float, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_fuzz_case"}> ({
  ^bb0(%arg0: !torch_float, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.aten.size.int"(%arg1, %0) : (!torch_vtensor, !torch_int) -> !torch_int
    %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %3 = "torch.aten.size.int"(%arg1, %2) : (!torch_vtensor, !torch_int) -> !torch_int
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %arg0, %arg0, %arg0) : (!torch_vtensor, !torch_float, !torch_float, !torch_float) -> !torch_vtensor
    %5 = "torch.aten.cat"(%arg1, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %6 = "torch.aten.eq.Tensor"(%arg1, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    %7 = "torch.aten._shape_as_tensor"(%arg1) : (!torch_vtensor) -> !torch_vtensor
    %8 = "torch.aten.add.Tensor"(%arg1, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_vtensor
    "func.return"(%8) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()