#executable_target_embedded_elf_x86_64 = #hal.executable.target<"llvm-cpu", "embedded-elf-x86_64", {data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", native_vector_size = 16 : index, target_triple = "x86_64-none-elf"}>
#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0)>
#map2 = affine_map<(d0) -> (d0)>
"builtin.module"() ({
  "func.func"() <{function_type = (!iree_tensor_ext.dispatch.tensor<readonly:tensor<7x7x2048xf32>>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7xf32>>) -> (), sym_name = "predict_dispatch_86"}> ({
  ^bb0(%arg0: !iree_tensor_ext.dispatch.tensor<readonly:tensor<7x7x2048xf32>>, %arg1: !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7xf32>>):
    %0 = "arith.constant"() <{value = 0.000000e+00 : f32}> : () -> f32
    %1 = "arith.constant"() <{value = 1.000000e+01 : f32}> : () -> f32
    %2 = "iree_tensor_ext.dispatch.tensor.load"(%arg0) <{operandSegmentSizes = array<i32: 1, 0, 0, 0, 0>, static_offsets = array<i64: 0, 0, 0>, static_sizes = array<i64: 7, 7, 2048>, static_strides = array<i64: 1, 1, 1>}> : (!iree_tensor_ext.dispatch.tensor<readonly:tensor<7x7x2048xf32>>) -> tensor<7x7x2048xf32>
    %3 = "tensor.empty"() : () -> tensor<7xf32>
    %4 = "linalg.fill"(%0, %3) <{operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg6: f32, %arg7: f32):
      "linalg.yield"(%arg6) : (f32) -> ()
    }) : (f32, tensor<7xf32>) -> tensor<7xf32>
    %5 = "linalg.generic"(%2, %4) <{indexing_maps = [#map, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<reduction>, #linalg.iterator_type<reduction>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg4: f32, %arg5: f32):
      %8 = "arith.addf"(%arg4, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%8) : (f32) -> ()
    }) : (tensor<7x7x2048xf32>, tensor<7xf32>) -> tensor<7xf32>
    %6 = "linalg.generic"(%5, %3) <{indexing_maps = [#map2, #map2], iterator_types = [#linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      %7 = "arith.divf"(%arg2, %1) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%7) : (f32) -> ()
    }) : (tensor<7xf32>, tensor<7xf32>) -> tensor<7xf32>
    "iree_tensor_ext.dispatch.tensor.store"(%6, %arg1) <{operandSegmentSizes = array<i32: 1, 1, 0, 0, 0, 0>, static_offsets = array<i64: 0>, static_sizes = array<i64: 7>, static_strides = array<i64: 1>}> : (tensor<7xf32>, !iree_tensor_ext.dispatch.tensor<writeonly:tensor<7xf32>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_embedded_elf_x86_64} : () -> ()
}) : () -> ()

