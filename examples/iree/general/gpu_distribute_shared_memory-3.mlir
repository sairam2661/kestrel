#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1, d2) -> (d0, d1, d2)>
#map1 = affine_map<(d0, d1, d2) -> (d0, d2)>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [32, 8, 1]>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<1x32x128xi4>, memref<1x128xf32>, memref<1x128xi4>, memref<1x32x128xf32, #gpu.address_space<workgroup>>) -> (), sym_name = "zero_dim_shared_memory_copy"}> ({
  ^bb0(%arg0: memref<1x32x128xi4>, %arg1: memref<1x128xf32>, %arg2: memref<1x128xi4>, %arg3: memref<1x32x128xf32, #gpu.address_space<workgroup>>):
    "linalg.generic"(%arg0, %arg1, %arg2, %arg3) <{indexing_maps = [#map, #map1, #map1, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 3, 1>}> ({
    ^bb0(%arg4: i4, %arg5: f32, %arg6: i4, %arg7: f32):
      %0 = "arith.extui"(%arg4) : (i4) -> i32
      %1 = "arith.extui"(%arg6) : (i4) -> i32
      %2 = "arith.subi"(%0, %1) <{overflowFlags = #arith.overflow<none>}> : (i32, i32) -> i32
      %3 = "arith.sitofp"(%2) : (i32) -> f32
      %4 = "arith.mulf"(%3, %arg5) <{fastmath = #arith.fastmath<none>}> : (f32, f32) -> f32
      "linalg.yield"(%4) : (f32) -> ()
    }) {__internal_linalg_transform__ = "copy_to_workgroup_memory"} : (memref<1x32x128xi4>, memref<1x128xf32>, memref<1x128xi4>, memref<1x32x128xf32, #gpu.address_space<workgroup>>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_cuda_nvptx_fb, translation_info = #translation} : () -> ()
}) : () -> ()

