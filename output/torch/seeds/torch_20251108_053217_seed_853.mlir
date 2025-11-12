"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_3xf32, !torch_vtensor_2xi8) -> (!torch_vtensor_3x2xi1, !torch_vtensor_3x2xi8), sym_name = "index_and_quantize"}> ({
  ^bb0(%arg0: !torch_vtensor_3xf32, %arg1: !torch_vtensor_2xi8):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %2 = "torch.constant.float"() <{value = 0.5 : f64}> : () -> !torch_float
    %3 = "torch.constant.int"() <{value = -1 : i64}> : () -> !torch_int
    %4 = "torch.prim.ListConstruct"(%0, %1) : (!torch_int, !torch_int) -> !torch_list_int
    %5 = "torch.aten.index_select"(%arg0, %0, %arg1) : (!torch_vtensor_3xf32, !torch_int, !torch_vtensor_2xi8) -> !torch_vtensor_2xf32
    %6 = "torch.aten._make_per_tensor_quantized_tensor"(%5, %2, %3) : (!torch_vtensor_2xf32, !torch_float, !torch_int) -> !torch_vtensor_2xui8
    %7 = "torch.aten.eq.Tensor"(%arg0, %5) : (!torch_vtensor_3xf32, !torch_vtensor_2xf32) -> !torch_vtensor_3x2xi1
    %8 = "torch.aten.view"(%6, %4) : (!torch_vtensor_2xui8, !torch_list_int) -> !torch_vtensor_3x2xi8
    "func.return"(%7, %8) : (!torch_vtensor_3x2xi1, !torch_vtensor_3x2xi8) -> ()
  }) : () -> ()
}) : () -> ()