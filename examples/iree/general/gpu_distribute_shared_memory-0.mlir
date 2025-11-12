#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0, d1) -> (d0, d1)>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [32, 4, 1]>
"builtin.module"() ({
  "memref.global"() <{sym_name = "__shared_memory___1", sym_visibility = "private", type = memref<3x512xf32, 3>}> : () -> ()
  "memref.global"() <{sym_name = "__shared_memory___0", sym_visibility = "private", type = memref<256x4xf32, 3>}> : () -> ()
  "memref.global"() <{sym_name = "__shared_memory__", sym_visibility = "private", type = memref<64x16xf32, 3>}> : () -> ()
  "func.func"() <{function_type = (memref<64x16xf32>, memref<256x4xf32>, memref<3x512xf32>) -> (), sym_name = "shared_mem_cpy"}> ({
  ^bb0(%arg0: memref<64x16xf32>, %arg1: memref<256x4xf32>, %arg2: memref<3x512xf32>):
    %0 = "arith.constant"() <{value = 0 : index}> : () -> index
    %1 = "affine.apply"(%0) <{map = #map}> : (index) -> index
    %2 = "memref.get_global"() <{name = @__shared_memory__}> : () -> memref<64x16xf32, 3>
    %3 = "memref.get_global"() <{name = @__shared_memory___0}> : () -> memref<256x4xf32, 3>
    %4 = "memref.get_global"() <{name = @__shared_memory___1}> : () -> memref<3x512xf32, 3>
    "gpu.barrier"() : () -> ()
    "linalg.generic"(%arg0, %2) <{indexing_maps = [#map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg7: f32, %arg8: f32):
      "linalg.yield"(%arg7) : (f32) -> ()
    }) {__internal_linalg_transform__ = "copy_to_workgroup_memory"} : (memref<64x16xf32>, memref<64x16xf32, 3>) -> ()
    "linalg.generic"(%arg1, %3) <{indexing_maps = [#map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg5: f32, %arg6: f32):
      "linalg.yield"(%arg5) : (f32) -> ()
    }) {__internal_linalg_transform__ = "copy_to_workgroup_memory"} : (memref<256x4xf32>, memref<256x4xf32, 3>) -> ()
    "linalg.generic"(%arg2, %4) <{indexing_maps = [#map1, #map1], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg3: f32, %arg4: f32):
      "linalg.yield"(%arg3) : (f32) -> ()
    }) {__internal_linalg_transform__ = "copy_to_workgroup_memory"} : (memref<3x512xf32>, memref<3x512xf32, 3>) -> ()
    "gpu.barrier"() : () -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_cuda_nvptx_fb, translation_info = #translation} : () -> ()
}) : () -> ()

