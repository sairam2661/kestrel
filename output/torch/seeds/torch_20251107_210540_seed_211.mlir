"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor, !torch_vtensor, !torch_vtensor) -> !torch_vtensor, sym_name = "complex_shape_adjustment"}> ({
  ^bb0(%arg0: !torch_vtensor, %arg1: !torch_vtensor, %arg2: !torch_vtensor):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.none"() : () -> !torch_none
    %3 = "torch.constant.str"() <{value = "slice_example"}> : () -> !torch_str
    %4 = "torch.aten.slice.Tensor"(%arg0, %0, %0, %1, %1) : (!torch_vtensor, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor
    %5 = "torch.aten.view"(%4, %0, %1) : (!torch_vtensor, !torch_int, !torch_int) -> !torch_vtensor
    %6 = "torch.aten.eq.Tensor"(%arg1, %arg2) : (!torch_vtensor, !torch_vtensor) -> !torch_bool
    %7 = "torch.aten.item"(%6) : (!torch_bool) -> i1
    %8 = "torch.aten._shape_as_tensor"(%5) : (!torch_vtensor) -> !torch_vtensor
    %9 = "torch.aten.cat"(%8, %0, %0, %2, %0) : (!torch_vtensor, !torch_int, !torch_int, !torch_none, !torch_int) -> !torch_vtensor
    %10 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %9, %0, %1, %3) : (!torch_vtensor, !torch_vtensor, !torch_int, !torch_int, !torch_str) -> !torch_vtensor
    "func.return"(%10) : (!torch_vtensor) -> ()
  }) : () -> ()
}) : () -> ()