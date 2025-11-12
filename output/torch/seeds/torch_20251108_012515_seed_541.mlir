"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_523_64x56_f32, !torch_int, !torch_int, !torch_bool, !torch_bool) -> !torch_vtensor_523_59x51_f32, sym_name = "custom_avgPool2d"}> ({
  ^bb0(%arg0: !torch_vtensor_523_64x56_f32, %arg1: !torch_int, %arg2: !torch_int, %arg3: !torch_bool, %arg4: !torch_bool):
    %str0 = "torch.constant.none"() : () -> !torch_none
    %str1 = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %str2 = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %str3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %str4 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %str5 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %str6 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %str7 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %str8 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch_int
    %str9 = "torch.constant.int"() <{value = 7 : i64}> : () -> !torch_int
    %str10 = "torch.constant.int"() <{value = 8 : i64}> : () -> !torch_int
    %str11 = "torch.constant.int"() <{value = 9 : i64}> : () -> !torch_int
    %str12 = "torch.constant.int"() <{value = 10 : i64}> : () -> !torch_int
    %str13 = "torch.prim.ListConstruct"(%str8, %str9) : (!torch_int, !torch_int) -> !torch_list_int
    %str14 = "torch.prim.ListConstruct"(%str6, %str7) : (!torch_int, !torch_int) -> !torch_list_int
    %str15 = "torch.prim.ListConstruct"(%str4, %str5) : (!torch_int, !torch_int) -> !torch_list_int
    %str16 = "torch.prim.ListConstruct"(%str12, %str13) : (!torch_int, !torch_list_int) -> !torch_list_int
    %str17 = "torch.aten.avg_pool2d"(%arg0, %str16, %str15, %str13, %arg3, %arg4, %str0) : (!torch_vtensor_523_64x56_f32, !torch_list_int, !torch_list_int, !torch_list_int, !torch_bool, !torch_bool, !torch_none) -> !torch_vtensor_523_59x51_f32
    "func.return"(%str17) : (!torch_vtensor_523_59x51_f32) -> ()
  }) : () -> ()
}) : () -> ()