"builtin.module"() ({
  "func.func"() <{function_type = (!torch_constant_str, !torch_constant_int, !torch_constant_bool) -> !torch_constant_none, sym_name = "complex_control_flow$basic"}> ({
  ^bb0(%arg0: !torch_constant_str, %arg1: !torch_constant_int, %arg2: !torch_constant_bool):
    %c0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_constant_int
    %c1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_constant_int
    %c2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_constant_int
    %c3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_constant_int
    %c4 = "torch.constant.float"() <{value = 1.000000e+00 : f64}> : () -> !torch_constant_float
    %c5 = "torch.constant.float"() <{value = 2.000000e+00 : f64}> : () -> !torch_constant_float
    %c6 = "torch.constant.float"() <{value = 3.000000e+00 : f64}> : () -> !torch_constant_float
    %list0 = "torch.prim.ListConstruct"(%c1, %c2, %c3) : (!torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_list_int
    %list1 = "torch.prim.ListConstruct"(%c4, %c5, %c6) : (!torch_constant_float, !torch_constant_float, !torch_constant_float) -> !torch_list_float
    %none0 = "torch.constant.none"() : () -> !torch_constant_none
    %tensor0 = "torch.vtensor.literal"() <{value = dense<[[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]]> : tensor<2x3xf32>}> : () -> !torch_vtensor_2x3_f32
    %tensor1 = "torch.aten.view"(%tensor0, %list0) : (!torch_vtensor_2x3_f32, !torch_list_int) -> !torch_vtensor_6_f32
    %tensor2 = "torch.aten.slice.Tensor"(%tensor1, %c0, %c1, %c2, %c3) : (!torch_vtensor_6_f32, !torch_constant_int, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_2_f32
    %tensor3 = "torch.aten.index_select"(%tensor2, %c0, %list0) : (!torch_vtensor_2_f32, !torch_constant_int, !torch_list_int) -> !torch_vtensor_1_f32
    %item0 = "torch.aten.item"(%tensor3) : (!torch_vtensor_1_f32) -> !torch_constant_float
    %tensor4 = "torch.aten.add.Tensor"(%tensor2, %tensor3) : (!torch_vtensor_2_f32, !torch_vtensor_1_f32) -> !torch_vtensor_2_f32
    %tensor5 = "torch.aten.cat"(%list1) : (!torch_list_float) -> !torch_vtensor_3_f32
    %tensor6 = "torch.aten._make_per_tensor_quantized_tensor"(%tensor5, %c1, %c2, %c3) : (!torch_vtensor_3_f32, !torch_constant_int, !torch_constant_int, !torch_constant_int) -> !torch_vtensor_3_f32
    %size0 = "torch.aten.size.int"(%tensor6, %c0) : (!torch_vtensor_3_f32, !torch_constant_int) -> !torch_constant_int
    %bool0 = "torch.aten.eq"(%size0, %c3) : (!torch_constant_int, !torch_constant_int) -> !torch_constant_bool
    %none1 = "torch.constant.none"() : () -> !torch_constant_none
    "func.return"(%none1) : (!torch_constant_none) -> ()
  }) : () -> ()
}) : () -> ()