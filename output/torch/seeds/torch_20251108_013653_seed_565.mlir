"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_j391, !torch_vtensor_j392) -> !torch_vtensor_j393, sym_name = "cross_dialect_stress_test"}> ({
  ^bb0(%arg0: !torch_vtensor_j391, %arg1: !torch_vtensor_j392):
    %0 = "torch.aten.slice.Tensor"(%arg0, %c0_i32, %c0_i32, %c1_i32) : (!torch_vtensor_j391, index, index, index) -> !torch_vtensor_j392
    %1 = "torch.aten.eq.Tensor"(%arg1, %0) : (!torch_vtensor_j392, !torch_vtensor_j392) -> !torch_vtensor_j393
    "func.return"(%1) : (!torch_vtensor_j393) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_j394) -> !torch_vtensor_j395, sym_name = "slice_and_quantize_test"}> ({
  ^bb0(%arg0: !torch_vtensor_j394):
    %0 = "torch.aten.slice.Tensor"(%arg0, %c0_i32, %c0_i32, %c2_i32) : (!torch_vtensor_j394, index, index, index) -> !torch_vtensor_j392
    %1 = "torch.aten._make_per_tensor_quantized_tensor"(%0, %c1_f32, %c2_i32) : (!torch_vtensor_j392, f32, i32) -> !torch_vtensor_j395
    "func.return"(%1) : (!torch_vtensor_j395) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_j396) -> !torch_vtensor_j397, sym_name = "size_and_item_test"}> ({
  ^bb0(%arg0: !torch_vtensor_j396):
    %0 = "torch.aten.size.int"(%arg0, %c0_i32) : (!torch_vtensor_j396, index) -> i64
    %1 = "torch.aten.item"(%0) : (i64) -> i64
    "func.return"(%1) : (i64) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_vtensor_j398) -> !torch_vtensor_j399, sym_name = "shape_as_tensor_test"}> ({
  ^bb0(%arg0: !torch_vtensor_j398):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_vtensor_j398) -> !torch_vtensor_j399
    "func.return"(%0) : (!torch_vtensor_j399) -> ()
  }) : () -> ()
}) : () -> ()