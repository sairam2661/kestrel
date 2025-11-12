"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1) -> !torch_vtensor_2, sym_name = "fuzzysample"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1):
    %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %c4_i64 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %c5_i64 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %c6_i64 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch_int
    %c7_i64 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch_int
    %c8_i64 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
    %c9_i64 = "torch.constant.int"() <{value = 9 : i64}> : () -> !torch_int
    %c10_i64 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
    %c11_i64 = "torch.constant.int"() <{value = 11 : i64}> : () -> !torch_int
    %c12_i64 = "torch.constant.int"() <{value = 12 : i64}> : () -> !torch_int
    %c13_i64 = "torch.constant.int"() <{value = 13 : i64}> : () -> !torch_int
    %c14_i64 = "torch.constant.int"() <{value = 14 : i64}> : () -> !torch_int
    %c15_i64 = "torch.constant.int"() <{value = 15 : i64}> : () -> !torch_int
    %list_0 = "torch.prim.ListConstruct"(%c2_i64, %c4_i64, %c6_i64, %c8_i64, %c10_i64, %c12_i64, %c14_i64) : (!torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_i64
    %slice_0 = "torch.aten.slice.Tensor"(%arg0, %c0_i64, %c3_i64, %c7_i64, %c1_i64) : (!torch_vtensor_0, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_0
    %list_1 = "torch.prim.ListConstruct"(%c1_i64, %c3_i64, %c5_i64, %c7_i64, %c9_i64, %c11_i64, %c13_i64, %c15_i64) : (!torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_list_i64
    %slice_1 = "torch.aten.slice.Tensor"(%arg1, %c1_i64, %c4_i64, %c8_i64, %c2_i64) : (!torch_vtensor_1, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_1
    %cat_0 = "torch.aten.cat"(%slice_0, %slice_1, %c0_i64) : (!torch_vtensor_0, !torch_vtensor_1, !torch_int) -> !torch_vtensor_0
    %item_0 = "torch.aten.item"(%cat_0) : (!torch_vtensor_0) -> !torch_int
    %eq_0 = "torch.aten.eq.Tensor"(%item_0, %c1_i64) : (!torch_int, !torch_int) -> !torch_int
    "func.return"(%eq_0) : (!torch_int) -> ()
  }) : () -> ()
}) : () -> ()