"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_type, !torch_vtensor_type) -> !torch_vtensor_type, sym_name = "fuzz_func"}> ({
  ^bb0(%arg0: !torch_vtensor_type, %arg1: !torch_vtensor_type):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.aten.view"(%arg0, %0, %0) : (!torch_vtensor_type, !torch_int, !torch_int) -> !torch_vtensor_type
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%2, %1, %1, %1) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
    %4 = "torch.aten.index_select"(%3, %0, %arg1) : (!torch_vtensor_type, !torch_int, !torch_vtensor_type) -> !torch_vtensor_type
    %5 = "torch.aten.slice.Tensor"(%4, %0, %1, %0, %0) : (!torch_vtensor_type, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_type
    "func.return"(%5) : (!torch_vtensor_type) -> ()
  }) : () -> ()
}) : () -> ()