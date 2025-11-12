#executable_target_cuda_nvptx_fb = #hal.executable.target<"cuda", "cuda-nvptx-fb">
#map = affine_map<() -> ()>
#translation = #iree_codegen.translation_info<pipeline = None workgroup_size = [32, 8, 1]>
"builtin.module"() ({
  "func.func"() <{function_type = (memref<f32>, memref<f32>) -> (), sym_name = "zero_dim_shared_memory_copy"}> ({
  ^bb0(%arg0: memref<f32>, %arg1: memref<f32>):
    "linalg.generic"(%arg0, %arg1) <{indexing_maps = [#map, #map], iterator_types = [], operandSegmentSizes = array<i32: 1, 1>}> ({
    ^bb0(%arg2: f32, %arg3: f32):
      "linalg.yield"(%arg2) : (f32) -> ()
    }) {__internal_linalg_transform__ = "copy_to_workgroup_memory"} : (memref<f32>, memref<f32>) -> ()
    "func.return"() : () -> ()
  }) {hal.executable.target = #executable_target_cuda_nvptx_fb, translation_info = #translation} : () -> ()
}) : () -> ()

