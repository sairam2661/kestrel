"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_123567890) -> !torch_vtensor_123567890, sym_name = "complex_func"}> ({
  ^bb0(%arg0: !torch_vtensor_123567890):
    %c1_i64 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %c2_i64 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %c3_i64 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %c4_i64 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %c5_i64 = "torch.constant.int"() <{value = 5 : i64}> : () -> !torch_int
    %c6_i64 = "torch.constant.int"() <{value = 6 : i64}> : () -> !torch_int
    %c0_i64 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %c_true = "torch.constant.bool"() <{value = true}> : () -> !torch_bool
    %c_false = "torch.constant.bool"() <{value = false}> : () -> !torch_bool
    %c_none = "torch.constant.none"() : () -> !torch_none
    %1 = "torch.prim.ListConstruct"(%c1_i64, %c2_i64, %c3_i64) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %2 = "torch.prim.ListConstruct"(%c4_i64, %c5_i64, %c6_i64) : (!torch_int, !torch_int, !torch_int) -> !torch_list_int
    %3 = "torch.aten.view"(%arg0, %1) : (!torch_vtensor_123567890, !torch_list_int) -> !torch_vtensor_123567890
    %4 = "torch.aten.add"(%3, %arg0) : (!torch_vtensor_123567890, !torch_vtensor_123567890) -> !torch_vtensor_123567890
    %5 = "torch.aten.mul"(%4, %arg0) : (!torch_vtensor_123567890, !torch_vtensor_123567890) -> !torch_vtensor_123567890
    %6 = "torch.aten.div"(%5, %arg0) : (!torch_vtensor_123567890, !torch_vtensor_123567890) -> !torch_vtensor_123567890
    %7 = "torch.aten.sub"(%6, %arg0) : (!torch_vtensor_123567890, !torch_vtensor_123567890) -> !torch_vtensor_123567890
    %8 = "torch.aten.pow"(%7, %c2_i64) : (!torch_vtensor_123567890, !torch_int) -> !torch_vtensor_123567890
    "func.return"(%8) : (!torch_vtensor_123567890) -> ()
  }) : () -> ()
}) : () -> ()