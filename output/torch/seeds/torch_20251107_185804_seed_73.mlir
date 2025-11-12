"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0d_i64, !torch_list_int) -> !torch_vtensor_0d_i64, sym_name = "test_make_per_tensor_quantized_tensor$complex"}> ({
  ^bb0(%arg0: !torch_vtensor_0d_i64, %arg1: !torch_list_int):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 255 : i64}> : () -> !torch_int
    %2 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %3 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %arg1, %0, %2) : (!torch_vtensor_0d_i64, !torch_list_int, !torch_int, !torch_list_int) -> !torch_vtensor_0d_i64
    "func.return"(%3) : (!torch_vtensor_0d_i64) -> ()
  }) : () -> ()
}) : () -> ()