"builtin.module"() ({
  "func.func"() <{function_type = (tensor<4x5xf32>, tensor<5x3xf32>) -> tensor<4x3xf32>, sym_name = "torch.matmul_with_slices"}> ({
  ^bb0(%arg0: tensor<4x5xf32>, %arg1: tensor<5x3xf32>):
    %0 = "torch.aten.slice.Tensor"(%arg0, %c0_i64, %c0_i64, %c2_i64, %c3_i64) : (tensor<4x5xf32>, i64, i64, i64, i64) -> tensor<3x5xf32>
    %1 = "torch.aten.slice.Tensor"(%arg1, %c1_i64, %c0_i64, %c2_i64, %c3_i64) : (tensor<5x3xf32>, i64, i64, i64, i64) -> tensor<3x3xf32>
    %2 = "torch.aten.matmul"(%0, %1) : (tensor<3x5xf32>, tensor<3x3xf32>) -> tensor<3x3xf32>
    %3 = "torch.aten.index_select"(%arg0, %c1_i64, %2) : (tensor<4x5xf32>, i64, tensor<3x3xf32>) -> tensor<4x3xf32>
    "func.return"(%3) : (tensor<4x3xf32>) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_cvt_memref_to_tensor, !torch_cvt_memref_to_tensor) -> !torch_cvt_tensor_to_memref, sym_name = "cvt_with_shape"}> ({
  ^bb0(%arg0: !torch_cvt_memref_to_tensor, %arg1: !torch_cvt_memref_to_tensor):
    %0 = "torch.aten._shape_as_tensor"(%arg0) : (!torch_cvt_memref_to_tensor) -> tensor<2xi64>
    %1 = "torch.aten._make_per_tensor_quantized_tensor"(%arg1, %0, %c0_i64, %f0_f32, %i0_si64) : (!torch_cvt_memref_to_tensor, tensor<2xi64>, i64, f32, si64) -> !torch_cvt_tensor_to_memref
    "func.return"(%1) : (!torch_cvt_tensor_to_memref) -> ()
  }) : () -> ()
}) : () -> ()

"builtin.module"() ({
  "func.func"() <{function_type = (!torch_cvt_memref_to_tensor, !torch_cvt_memref_to_tensor) -> !torch_cvt_tensor_to_memref, sym_name = "cvt_with_eq_check"}> ({
  ^bb0(%arg0: !torch_cvt_memref_to_tensor, %arg1: !torch_cvt_memref_to_tensor):
    %0 = "torch.aten.eq.Tensor"(%arg0, %arg1) : (!torch_cvt_memref_to_tensor, !torch_cvt_memref_to_tensor) -> !torch_cvt_tensor_to_memref
    "func.return"(%0) : (!torch_cvt_tensor_to_memref) -> ()
  }) : () -> ()
}) : () -> ()