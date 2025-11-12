"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_dim3, !torch_vtensor_literal_dim2) -> !torch_vtensor_literal_dim2, sym_name = "complex_index_select"}> ({
  ^bb0(%arg0: !torch_vtensor_literal_dim3, %arg1: !torch_vtensor_literal_dim2):
    %0 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %4 = "torch.constant.none"() : () -> !torch_none
    %5 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2, %3) : (!torch_vtensor_literal_dim3, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_literal_dim2
    %6 = "torch.aten.index_select"(%5, %0, %arg1) : (!torch_vtensor_literal_dim2, !torch_int, !torch_vtensor_literal_dim2) -> !torch_vtensor_literal_dim2
    "func.return"(%6) : (!torch_vtensor_literal_dim2) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_dim4) -> !torch_vtensor_literal_dim3, sym_name = "complex_view"}> ({
  ^bb0(%arg0: !torch_vtensor_literal_dim4):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %2 = "torch.constant.int"() <{value = 4 : i64}> : () -> !torch_int
    %3 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %4 = "torch.constant.none"() : () -> !torch_none
    %5 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %2, %3) : (!torch_vtensor_literal_dim4, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_literal_dim3
    "func.return"(%5) : (!torch_vtensor_literal_dim3) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_dim2, !torch_vtensor_literal_dim1) -> !torch_vtensor_literal_dim1, sym_name = "complex_add"}> ({
  ^bb0(%arg0: !torch_vtensor_literal_dim2, %arg1: !torch_vtensor_literal_dim1):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.constant.int"() <{value = 1 : i64}> : () -> !torch_int
    %2 = "torch.constant.none"() : () -> !torch_none
    %3 = "torch.aten.slice.Tensor"(%arg0, %0, %1, %1, %1) : (!torch_vtensor_literal_dim2, !torch_int, !torch_int, !torch_int, !torch_int) -> !torch_vtensor_literal_dim1
    %4 = "torch.aten.add.Tensor"(%3, %arg1) : (!torch_vtensor_literal_dim1, !torch_vtensor_literal_dim1) -> !torch_vtensor_literal_dim1
    "func.return"(%4) : (!torch_vtensor_literal_dim1) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_dim3, !torch_vtensor_literal_dim2) -> !torch_vtensor_literal_dim2, sym_name = "complex_cat"}> ({
  ^bb0(%arg0: !torch_vtensor_literal_dim3, %arg1: !torch_vtensor_literal_dim2):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %2 = "torch.constant.none"() : () -> !torch_none
    %3 = "torch.aten.cat"(%arg0, %arg1, %0) : (!torch_vtensor_literal_dim3, !torch_vtensor_literal_dim2, !torch_int) -> !torch_vtensor_literal_dim2
    "func.return"(%3) : (!torch_vtensor_literal_dim2) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_literal_dim3) -> !torch_vtensor_literal_dim3, sym_name = "complex_make_per_tensor_quantized_tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_literal_dim3):
    %0 = "torch.constant.int"() <{value = 2 : i64}> : () -> !torch_int
    %1 = "torch.constant.float"() <{value = 1.0 : f64}> : () -> !torch_float
    %2 = "torch.constant.float"() <{value = 0.0 : f64}> : () -> !torch_float
    %3 = "torch.constant.none"() : () -> !torch_none
    %4 = "torch.aten._make_per_tensor_quantized_tensor"(%arg0, %0, %1, %2) : (!torch_vtensor_literal_dim3, !torch_int, !torch_float, !torch_float) -> !torch_vtensor_literal_dim3
    "func.return"(%4) : (!torch_vtensor_literal_dim3) -> ()
  }) : () -> ()
}) : () -> ()