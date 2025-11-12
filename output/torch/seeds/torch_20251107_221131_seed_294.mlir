"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3x2_i8, !torch_vtensor_2x3_i8) -> !torch_vtensor_3x3_i8, sym_name = "torch_aten_cat_unusual"}> ({
    ^bb0(%arg0: !torch_vtensor_3x2_i8, %arg1: !torch_vtensor_2x3_i8):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_3x2_i8) -> !torch_list_i64
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_2x3_i8) -> !torch_list_i64
      %2 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_list_i64) -> !torch_vtensor_1x3_i64
      %3 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_list_i64) -> !torch_vtensor_1x2_i64
      %4 = "torch.aten.cat"(%arg0, %arg1) : (!torch_vtensor_3x2_i8, !torch_vtensor_2x3_i8) -> !torch_vtensor_3x3_i8
      "func.return"(%4) : (!torch_vtensor_3x3_i8) -> ()
  }) : () -> ()
}) : () -> ()