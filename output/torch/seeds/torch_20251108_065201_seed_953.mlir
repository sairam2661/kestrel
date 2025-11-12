"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1024_32_f32, !torch_vtensor_1024_32_i32) -> !torch_vtensor_1024_32_f32, sym_name = "mixed_dtype_op"}> ({
  ^bb0(%arg0: !torch_vtensor_1024_32_f32, %arg1: !torch_vtensor_1024_32_i32):
    %0 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %1 = "torch.constant.int"() <{value = 256 : i64}> : () -> !torch_int
    %2 = "torch.constant.str"() <{value = "sum"}> : () -> !torch_str
    %3 = "torch.aten.to.dtype"(%arg0, %1, %0, %0, %0) : (!torch_vtensor_1024_32_f32, !torch_int, !torch_bool, !torch_bool, !torch_bool) -> !torch_vtensor_1024_32_i32
    %4 = "torch.aten.add.Tensor"(%3, %arg1, %0) : (!torch_vtensor_1024_32_i32, !torch_vtensor_1024_32_i32, !torch_bool) -> !torch_vtensor_1024_32_i32
    %5 = "torch.aten.to.dtype"(%4, %1, %0, %0, %0) : (!torch_vtensor_1024_32_i32, !torch_int, !torch_bool, !torch_bool, !torch_bool) -> !torch_vtensor_1024_32_f32
    "func.return"(%5) : (!torch_vtensor_1024_32_f32) -> ()
  }) : () -> ()
}) : () -> ()