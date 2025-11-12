"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2x32_f32, !torch_vtensor_1x5x25_complex_f32) -> !torch_vtensor_2x5x25_complex_f32, sym_name = "torch.aten.stft.center_2D_no_window"}> ({
    ^bb0(%arg0: !torch_vtensor_2x32_f32):
      %0 = "torch.constant.str"() <{value = "reflect"}> : () -> !torch_str
      %1 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
      %2 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
      %3 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
      %4 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
      %5 = "torch.constant.none"() : () -> !torch_none
      %6 = "torch.aten.stft.center"(%arg0, %1, %2, %5, %5, %3, %0, %3, %3, %4, %3) : (!torch_vtensor_2x32_f32, !torch_int, !torch_int, !torch_none, !torch_none, !torch_bool, !torch_str, !torch_bool, !torch_bool, !torch_bool, !torch_bool) -> !torch_vtensor_2x5x25_complex_f32
      "func.return"(%6) : (!torch_vtensor_2x5x25_complex_f32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3x4_si32) -> !torch_vtensor_3x4_f32, sym_name = "torch.aten.expm1$int"}> ({
    ^bb0(%arg0: !torch_vtensor_3x4_si32):
      %0 = "torch.aten.expm1"(%arg0) : (!torch_vtensor_3x4_si32) -> !torch_vtensor_3x4_f32
      "func.return"(%0) : (!torch_vtensor_3x4_f32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "torch.global_slot.module_initializer"() ({
    "torch.initialize.global_slots"() <{slotSymNames = []}> : () -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2x3_f32, !torch_vtensor_2x3_f32) -> !torch_vtensor_4x6_f32, sym_name = "torch.aten.cat"}> ({
    ^bb0(%arg0: !torch_vtensor_2x3_f32, %arg1: !torch_vtensor_2x3_f32):
      %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
      %1 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list_int
      %2 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torch_vtensor_2x3_f32, !torch_vtensor_2x3_f32, !torch_list_int) -> !torch_vtensor_4x6_f32
      "func.return"(%2) : (!torch_vtensor_4x6_f32) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_2x3_f32, !torch_vtensor_2x3_f32) -> !torch_vtensor_2x3_f32, sym_name = "torch.aten.add.Tensor"}> ({
    ^bb0(%arg0: !torch_vtensor_2x3_f32, %arg1: !torch_vtensor_2x3_f32):
      %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_2x3_f32, !torch_vtensor_2x3_f32) -> !torch_vtensor_2x3_f32
      "func.return"(%0) : (!torch_vtensor_2x3_f32) -> ()
  }) : () -> ()
}) : () -> ()