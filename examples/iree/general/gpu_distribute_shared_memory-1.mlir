#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<(d0, d1) -> (d0, d1)>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [32, 8, 1]>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<56x32xf32, strided<[128, 1], offset: ?>>, memref<56x32xf32, 3>) -> (), sym_name = "unaligned_shared_memory_copy"}> ({
  ^bb0(%arg0: memref<56x32xf32, strided<[128, 1], offset: ?>>, %arg1: memref<56x32xf32, 3>):
    "linalg.generic"(%arg0, %arg1) <{indexing_maps = [#map, #map], iterator_types = [#linalg.iterator_type<parallel>, #linalg.iterator_type<parallel>], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      "linalg.yield"(%arg2) : (f32) -> ()
    }) {__internal_linalg_transform__ = "copy_to_workgroup_memory"} : (memref<56x32xf32, strided<[128, 1], offset: ?>>, memref<56x32xf32, 3>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_cuda_nvptx_fb, translation_info = #translation} : () -> ()
}) : () -> ()

