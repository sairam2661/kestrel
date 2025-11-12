"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_1833821977_0, !torch_vtensor_1833821977_1) -> !torch_vtensor_1833821977_2, sym_name = "transpose_and_cat"}> ({
    ^bb0(%arg0: !torch_vtensor_1833821977_0, %arg1: !torch_vtensor_1833821977_1):
      %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_1833821977_0) -> i64
      %1 = "torch.aten.size.int"(%arg1) : (!torch_vtensor_1833821977_1) -> i64
      %2 = "torch.prim.NumToTensor.Scalar"(%0) : (i64) -> !torch_vtensor_1833821977_3
      %3 = "torch.prim.NumToTensor.Scalar"(%1) : (i64) -> !torch_vtensor_1833821977_4
      %4 = "torch.prim.ListConstruct"(%2, %3) : (!torch_vtensor_1833821977_3, !torch_vtensor_1833821977_4) -> !torch_list_int
      %5 = "torch.aten.cat"(%4, %c0_i64) : (!torch_list_int, i64) -> !torch_vtensor_1833821977_5
      %6 = "torch.prim.ListConstruct"(%c2_i64, %c2_i64) : (i64, i64) -> !torch_list_int
      %7 = "torch.aten.view"(%5, %6) : (!torch_vtensor_1833821977_5, !torch_list_int) -> !torch_vtensor_1833821977_6
      %8 = "torch.aten.transpose.int"(%7, %c0_i64, %c1_i64) : (!torch_vtensor_1833821977_6, i64, i64) -> !torch_vtensor_1833821977_7
      %9 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor_1833821977_0, !torch_vtensor_1833821977_1) -> !torch_list_vtensor
      %10 = "torch.aten.cat"(%9, %c0_i64) : (!torch_list_vtensor, i64) -> !torch_vtensor_1833821977_8
      "func.return"(%10) : (!torch_vtensor_1833821977_8) -> ()
  }) : () -> ()
}) : () -> ()