"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_i32_2x3, !torch_vtensor_i32_3x2) -> !torch_vtensor_i32_3x3, sym_name = "torch.matmul_with_transpose"}> ({
  ^bb0(%arg0: !torch_vtensor_i32_2x3, %arg1: !torch_vtensor_i32_3x2):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.aten.transpose.int"(%arg0, %0, %1) : (!torch_vtensor_i32_2x3, !torch_int, !torch_int) -> !torch_vtensor_i32_3x2
    %3 = "torch.aten.matmul"(%2, %arg1) : (!torch_vtensor_i32_3x2, !torch_vtensor_i32_3x2) -> !torch_vtensor_i32_3x3
    "func.return"(%3) : (!torch_vtensor_i32_3x3) -> ()
  }) : () -> ()
}) : () -> ()