"builtin.module"() ({
  "func.func"() <{
    function_type = (!torch_vtensor_2dim_f32, !torch_vtensor_2dim_f32) -> !torch_vtensor_1dim_f32,
    sym_name = "torch_custom_func"
  }> ({
    ^bb0(%tensor1: !torch_vtensor_2dim_f32, %tensor2: !torch_vtensor_2dim_f32):
      %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %1 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %2 = "torch.prim.ListConstruct"(%0, %0) : (!torch_int, !torch_int) -> !torch_list_int
      %3 = "torch.aten.slice.Tensor"(%tensor1, %0, %0, %0) : (!torch_vtensor_2dim_f32, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1dim_f32
      %4 = "torch.aten.view"(%tensor2, %2) : (!torch_vtensor_2dim_f32, !torch_list_int) -> !torch_vtensor_1dim_f32
      %5 = "torch.aten.add.Tensor"(%3, %4) : (!torch_vtensor_1dim_f32, !torch_vtensor_1dim_f32) -> !torch_vtensor_1dim_f32
      %6 = "torch.aten.item"(%5) : (!torch_vtensor_1dim_f32) -> !torch_float
      "func.return"(%6) : (!torch_float) -> ()
  }) : () -> ()
}) : () -> ()