"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_0d_f64, !torch_vtensor_0d_f64) -> !torch_vtensor_0d_f64, sym_name = "torch.aten.add.Tensor$complex"}> ({
  ^bb0(%arg0: !torch_vtensor_0d_f64, %arg1: !torch_vtensor_0d_f64):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_0d_f64, !torch_vtensor_0d_f64) -> !torch_vtensor_0d_f64
    "func.return"(%0) : (!torch_vtensor_0d_f64) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (!torch_vtensor_0d_f64) -> !torch_vtensor_1d_i32, sym_name = "torch.aten._shape_as_tensor$complex"}> ({
  ^bb0(%arg0: !torch_vtensor_0d_f64):
    %0 = "torch.aten.size.int"(%arg0) : (!torch_vtensor_0d_f64) -> !torch_list_i32
    %1 = "torch.aten._shape_as_tensor"(%0) : (!torch_list_i32) -> !torch_vtensor_1d_i32
    "func.return"(%1) : (!torch_vtensor_1d_i32) -> ()
  }) : () -> ()

  "func.func"() <{function_type = () -> !torch_vtensor_1d_i32, sym_name = "torch.aten._shape_as_tensor$complex_noarg"}> ({
  ^bb0():
    %0 = "torch.constant.int"() <{value = 3 : i64}> : () -> !torch_int
    %1 = "torch.prim.NumToTensor.Scalar"(%0) : (!torch_int) -> !torch_vtensor_0d_i64
    %2 = "torch.aten.size.int"(%1) : (!torch_vtensor_0d_i64) -> !torch_list_i32
    %3 = "torch.aten._shape_as_tensor"(%2) : (!torch_list_i32) -> !torch_vtensor_1d_i32
    "func.return"(%3) : (!torch_vtensor_1d_i32) -> ()
  }) : () -> ()

  "func.func"() <{function_type = (!torch_vtensor_1d_i32, !torch_vtensor_1d_i32) -> !torch_vtensor_1d_i32, sym_name = "torch.aten.cat$complex"}> ({
  ^bb0(%arg0: !torch_vtensor_1d_i32, %arg1: !torch_vtensor_1d_i32):
    %0 = "torch.constant.int"() <{value = 0 : i64}> : () -> !torch_int
    %1 = "torch.prim.ListConstruct"(%0) : (!torch_int) -> !torch_list_i64
    %2 = "torch.aten.cat"(%arg0, %arg1, %1) : (!torch_vtensor_1d_i32, !torch_vtensor_1d_i32, !torch_list_i64) -> !torch_vtensor_1d_i32
    "func.return"(%2) : (!torch_vtensor_1d_i32) -> ()
  }) : () -> ()
}) : () -> ()