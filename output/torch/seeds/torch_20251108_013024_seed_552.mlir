"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_i1, sym_name = "torch_c.eq_tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_4x5_f32, %arg1: !torch_vtensor_4x5_f32):
    %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_i1
    "func.return"(%0) : (!torch_vtensor_4x5_i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_vtensor_4x5_i1, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_f32, sym_name = "torch_c.select_nonzero"}> ({
  ^bb0(%arg0: !torch_vtensor_4x5_i1, %arg1: !torch_vtensor_4x5_f32):
    %0 = "torch.aten.index.Tensor"(%arg1, %arg0) : (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_i1) -> !torch_vtensor_4x5_f32
    "func.return"(%0) : (!torch_vtensor_4x5_f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_f32, sym_name = "torch_c.add_tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_4x5_f32, %arg1: !torch_vtensor_4x5_f32):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_f32
    "func.return"(%0) : (!torch_vtensor_4x5_f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_i1, sym_name = "torch_c.eq_add_tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_4x5_f32, %arg1: !torch_vtensor_4x5_f32):
    %0 = "torch.aten.add.Tensor"(%arg0, %arg1) : (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_f32
    %1 = "torch.constant.float"() <{value = 0.000000e+00 : f32}> : () -> !torch_vtensor_4x5_f32
    %2 = "torch.aten.eq.Tensor"(%0, %1) : (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_i1
    "func.return"(%2) : (!torch_vtensor_4x5_i1) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_f32, sym_name = "torch_c.cat_tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_4x5_f32, %arg1: !torch_vtensor_4x5_f32):
    %0 = "torch.prim.ListConstruct"(%arg0, %arg1) : (!torch_vtensor_4x5_f32, !torch_vtensor_4x5_f32) -> !torch_list_vtensor_4x5_f32
    %1 = "torch.aten.cat"(%0, %c0_i64) : (!torch_list_vtensor_4x5_f32, i64) -> !torch_vtensor_8x5_f32
    "func.return"(%1) : (!torch_vtensor_8x5_f32) -> ()
  }) : () -> ()
  "func.func"() <{function_type = (!torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_f32, sym_name = "torch_c.relu_tensor"}> ({
  ^bb0(%arg0: !torch_vtensor_4x5_f32):
    %0 = "torch.constant.float"() <{value = 0.000000e+00 : f32}> : () -> !torch_vtensor_4x5_f32
    %1 = "torch.aten.relu"(%arg0) : (!torch_vtensor_4x5_f32) -> !torch_vtensor_4x5_f32
    "func.return"(%1) : (!torch_vtensor_4x5_f32) -> ()
  }) : () -> ()
}) : () -> ()