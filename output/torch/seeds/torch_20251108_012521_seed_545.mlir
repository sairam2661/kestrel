"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0dim_f32, !torch_vtensor_0dim_f32) -> !torch_vtensor_0dim_f32, sym_name = "complex_add"}> ({
  ^bb0(%arg0: !torch_vtensor_0dim_f32, %arg1: !torch_vtensor_0dim_f32):
    %0 = "torch.aten.add"(%arg0, %arg1) : (!torch_vtensor_0dim_f32, !torch_vtensor_0dim_f32) -> !torch_vtensor_0dim_f32
    %1 = "torch.aten.mul"(%0, %0) : (!torch_vtensor_0dim_f32, !torch_vtensor_0dim_f32) -> !torch_vtensor_0dim_f32
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.aten.add"(%1, %2) : (!torch_vtensor_0dim_f32, !torch_int) -> !torch_vtensor_0dim_f32
    "func.return"(%3) : (!torch_vtensor_0dim_f32) -> ()
  }) : () -> ()
}) : () -> ()