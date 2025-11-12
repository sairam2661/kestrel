"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_20_si32, !torch_vtensor_10_f32) -> (!torch_vtensor_10_f32, !torch_vtensor_20_i64), sym_name = "complex_op_sequence"}> ({
  ^bb0(%arg0: !torch_vtensor_20_si32, %arg1: !torch_vtensor_10_f32):
    %0 = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %2 = "torch.aten.argmax"(%arg0, %0, %1) : (!torch_vtensor_20_si32, !torch_none, !torch_bool) -> !torch_vtensor_1_si64
    %3 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %4 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %5 = "torch.prim.ListConstruct"(%3, %4) : (!torch_int, !torch_int) -> !torch_list_int
    %6 = "torch.aten.view"(%arg1, %5) : (!torch_vtensor_10_f32, !torch_list_int) -> !torch_vtensor_1_10_f32
    %7 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %8 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %9 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %10 = "torch.aten.slice.Tensor"(%6, %7, %8, %9, %4) : (!torch_vtensor_1_10_f32, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1_5_f32
    "func.return"(%10, %2) : (!torch_vtensor_1_5_f32, !torch_vtensor_1_si64) -> ()
  }) : () -> ()
}) : () -> ()