"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0, !torch_vtensor_1, !torch_vtensor_2) -> (!torch_vtensor_3, !torch_list_int), sym_name = "complex_tensor_ops"}> ({
  ^bb0(%arg0: !torch_vtensor_0, %arg1: !torch_vtensor_1, %arg2: !torch_vtensor_2):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_i
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_i
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_i
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_i
    %4 = "torch.constant.str"() <{value = "example"}> : () -> !torch_str
    %5 = "torch.aten.slice.Tensor"(%arg0, %1, %0, %2, %3) : (!torch_vtensor_0, !torch_i, !torch_i, !torch_i, !torch_i) -> !torch_vtensor_1
    %6 = "torch.aten.index_select"(%arg1, %1, %5) : (!torch_vtensor_1, !torch_i, !torch_vtensor_1) -> !torch_vtensor_2
    %7 = "torch.aten._shape_as_tensor"(%6) : (!torch_vtensor_2) -> !torch_vtensor_3
    %8 = "torch.prim.NumToTensor.Scalar"(%1) : (!torch_i) -> !torch_vtensor_0
    %9 = "torch.aten.add.Tensor"(%7, %8) : (!torch_vtensor_3, !torch_vtensor_0) -> !torch_vtensor_3
    %10 = "torch.aten.eq.Tensor"(%9, %8) : (!torch_vtensor_3, !torch_vtensor_0) -> !torch_vtensor_1
    %11 = "torch.prim.ListConstruct"(%10) : (!torch_vtensor_1) -> !torch_list_int
    "func.return"(%7, %11) : (!torch_vtensor_3, !torch_list_int) -> ()
  }) : () -> ()
}) : () -> ()